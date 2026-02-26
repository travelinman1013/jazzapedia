/**
 * Export all Spotify playlists to CSV (for sharing) and categorized JSON (for website).
 *
 * Usage:
 *   cd apps/scraper
 *   CONFIG_PATH=../../config/scraper/config.yaml npx tsx src/scripts/export-playlists.ts
 *
 * Requires config/scraper/config.yaml with Spotify credentials.
 */

import fs from 'fs';
import path from 'path';
import yaml from 'js-yaml';
import SpotifyWebApi from 'spotify-web-api-node';

interface SpotifyCredentials {
  clientId: string;
  clientSecret: string;
  refreshToken: string;
  userId: string;
  staticPlaylistId?: string;
}

interface PlaylistEntry {
  id: string;
  name: string;
  url: string;
  trackCount: number;
  description: string;
  owner: string;
  public: boolean;
}

interface ArchiveEntry {
  id: string;
  name: string;
  url: string;
  trackCount: number;
  startDate: string;
  endDate: string;
}

interface LegacyEntry {
  id: string;
  name: string;
  url: string;
  trackCount: number;
  description: string;
}

interface PlaylistsJson {
  live: {
    id: string;
    name: string;
    url: string;
    description: string;
  };
  archives: ArchiveEntry[];
  legacy: LegacyEntry[];
}

// Parse "WWOZTracker M/D/YY - M/D/YY" into ISO dates
function parseArchiveDateRange(name: string): { startDate: string; endDate: string } | null {
  const match = name.match(/WWOZTracker\s+(\d{1,2})\s*\/\s*(\d{1,2})\s*\/\s*(\d{2})\s*-\s*(\d{1,2})\s*\/\s*(\d{1,2})\s*\/\s*(\d{2})/);
  if (!match) return null;
  const [, sm, sd, sy, em, ed, ey] = match;
  const startDate = `20${sy}-${sm.padStart(2, '0')}-${sd.padStart(2, '0')}`;
  const endDate = `20${ey}-${em.padStart(2, '0')}-${ed.padStart(2, '0')}`;
  return { startDate, endDate };
}

function loadCredentials(): { spotify: SpotifyCredentials; mainPlaylistId: string } {
  // Try several config locations
  const candidates = [
    process.env.CONFIG_PATH,
    path.resolve(process.cwd(), '../../config/scraper/config.yaml'),
    path.resolve(process.cwd(), 'config/config.yaml'),
  ].filter(Boolean) as string[];

  let configPath: string | null = null;
  for (const p of candidates) {
    if (fs.existsSync(p)) {
      configPath = p;
      break;
    }
  }

  if (!configPath) {
    throw new Error(`Config not found. Tried: ${candidates.join(', ')}`);
  }

  console.log(`Using config: ${configPath}`);
  const raw = yaml.load(fs.readFileSync(configPath, 'utf8')) as any;

  return {
    spotify: {
      clientId: raw.spotify.clientId,
      clientSecret: raw.spotify.clientSecret,
      refreshToken: raw.spotify.refreshToken,
      userId: raw.spotify.userId,
      staticPlaylistId: raw.spotify.staticPlaylistId,
    },
    mainPlaylistId: raw.playlistArchiving?.mainPlaylistId || raw.spotify.staticPlaylistId || '',
  };
}

async function main() {
  const { spotify: creds, mainPlaylistId } = loadCredentials();

  const spotify = new SpotifyWebApi({
    clientId: creds.clientId,
    clientSecret: creds.clientSecret,
  });
  spotify.setRefreshToken(creds.refreshToken);

  // Get access token
  console.log('Refreshing Spotify access token...');
  const tokenData = await spotify.refreshAccessToken();
  spotify.setAccessToken(tokenData.body.access_token);
  console.log('Authenticated successfully.');

  // Fetch ALL playlists
  console.log(`Fetching all playlists for user ${creds.userId}...`);
  const allPlaylists: PlaylistEntry[] = [];
  let offset = 0;
  const limit = 50;

  while (true) {
    const res = await spotify.getUserPlaylists(creds.userId, { limit, offset });
    const items = res.body.items ?? [];

    for (const pl of items) {
      allPlaylists.push({
        id: pl.id,
        name: pl.name,
        url: `https://open.spotify.com/playlist/${pl.id}`,
        trackCount: pl.tracks?.total ?? 0,
        description: pl.description || '',
        owner: pl.owner?.display_name || pl.owner?.id || '',
        public: pl.public ?? false,
      });
    }

    console.log(`  Fetched ${allPlaylists.length} playlists so far (offset: ${offset})...`);

    if (items.length < limit) break;
    offset += limit;
  }

  console.log(`\nTotal playlists found: ${allPlaylists.length}`);

  // Categorize
  const archives: ArchiveEntry[] = [];
  const legacy: LegacyEntry[] = [];
  let livePlaylist: PlaylistEntry | null = null;

  for (const pl of allPlaylists) {
    // Main live playlist
    if (pl.id === mainPlaylistId) {
      livePlaylist = pl;
      continue;
    }

    // Archive playlists: "WWOZTracker M/D/YY - M/D/YY"
    const dateRange = parseArchiveDateRange(pl.name);
    if (dateRange) {
      archives.push({
        id: pl.id,
        name: pl.name,
        url: pl.url,
        trackCount: pl.trackCount,
        startDate: dateRange.startDate,
        endDate: dateRange.endDate,
      });
      continue;
    }

    // Skip daily WWOZ playlists (e.g., "WWOZ Wednesday Feb 26, 2026")
    if (pl.name.startsWith('WWOZ ')) continue;

    // Only include "Max Trax" playlists in legacy
    if (pl.name.toLowerCase().startsWith('max trax') && (pl.owner === 'Maxwell Erlich' || pl.owner === creds.userId)) {
      legacy.push({
        id: pl.id,
        name: pl.name,
        url: pl.url,
        trackCount: pl.trackCount,
        description: pl.description,
      });
    }
  }

  // Sort archives by endDate descending (newest first)
  archives.sort((a, b) => b.endDate.localeCompare(a.endDate));

  // Build JSON for website
  const playlistsJson: PlaylistsJson = {
    live: livePlaylist
      ? {
          id: livePlaylist.id,
          name: livePlaylist.name,
          url: livePlaylist.url,
          description: 'Live rolling playlist of tracks heard on WWOZ 90.7 FM New Orleans',
        }
      : {
          id: mainPlaylistId,
          name: 'WWOZTracker',
          url: `https://open.spotify.com/playlist/${mainPlaylistId}`,
          description: 'Live rolling playlist of tracks heard on WWOZ 90.7 FM New Orleans',
        },
    archives,
    legacy,
  };

  // Write JSON for the website
  const jsonPath = path.resolve(process.cwd(), '../../apps/web/src/data/playlists.json');
  fs.mkdirSync(path.dirname(jsonPath), { recursive: true });
  fs.writeFileSync(jsonPath, JSON.stringify(playlistsJson, null, 2) + '\n');
  console.log(`\nJSON written to: ${jsonPath}`);
  console.log(`  Live playlist: ${playlistsJson.live.name}`);
  console.log(`  Archives: ${archives.length}`);
  console.log(`  Legacy: ${legacy.length}`);

  // Write CSV for Randy
  const csvPath = path.resolve(process.cwd(), '../../exports/playlists.csv');
  fs.mkdirSync(path.dirname(csvPath), { recursive: true });

  const csvHeader = 'Name,URL,Track Count,Description,Owner,Public';
  const csvRows = allPlaylists.map((pl) => {
    const desc = pl.description.replace(/"/g, '""');
    const name = pl.name.replace(/"/g, '""');
    return `"${name}","${pl.url}",${pl.trackCount},"${desc}","${pl.owner}",${pl.public}`;
  });

  fs.writeFileSync(csvPath, [csvHeader, ...csvRows].join('\n') + '\n');
  console.log(`\nCSV written to: ${csvPath}`);
  console.log(`  Total rows: ${allPlaylists.length}`);
}

main().catch((err) => {
  console.error('Export failed:', err);
  process.exit(1);
});
