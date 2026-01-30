/**
 * Connections Index Generator
 *
 * Builds forward and reverse connection indexes for artist relationships:
 * - collaborators <-> collaboratedWith
 * - influenced <-> influencedBy
 * - mentors <-> mentoredBy
 *
 * This allows bi-directional navigation of artist relationships.
 */

import fs from 'node:fs';
import path from 'node:path';
import matter from 'gray-matter';
import { toArtistSlug } from './artist-matcher';

export interface MusicalConnections {
  collaborators?: string[];
  influenced?: string[];
  mentors?: string[];
}

export interface ReverseConnections {
  collaboratedWith?: string[];
  influencedBy?: string[];
  mentoredBy?: string[];
}

export interface ConnectionsIndex {
  // Forward connections: artist slug -> their connections
  forward: Record<string, MusicalConnections>;
  // Reverse connections: artist slug -> who connects to them
  reverse: Record<string, ReverseConnections>;
  // Artist name to slug mapping for resolution
  nameToSlug: Record<string, string>;
  // Metadata
  generatedAt: string;
  artistCount: number;
}

/**
 * Build the connections index from artist markdown files
 */
export async function buildConnectionsIndex(artistsDir: string): Promise<ConnectionsIndex> {
  const index: ConnectionsIndex = {
    forward: {},
    reverse: {},
    nameToSlug: {},
    generatedAt: new Date().toISOString(),
    artistCount: 0,
  };

  // First pass: build name -> slug mapping and collect forward connections
  const files = fs.readdirSync(artistsDir, { recursive: true });

  for (const file of files) {
    const filePath = typeof file === 'string' ? file : file.toString();
    if (!filePath.endsWith('.md')) continue;
    if (filePath.includes('.backup')) continue;

    const fullPath = path.join(artistsDir, filePath);
    const stats = fs.statSync(fullPath);
    if (stats.isDirectory()) continue;

    const content = fs.readFileSync(fullPath, 'utf-8');
    const { data } = matter(content);

    // Generate slug from filename (matching artist-loader logic)
    const slug = filePath
      .replace(/\.md$/, '')
      .toLowerCase()
      .replace(/[^a-z0-9]+/g, '-')
      .replace(/-+/g, '-')
      .replace(/^-|-$/g, '');

    const title = data.title || filePath.replace(/\.md$/, '');

    // Add to name mapping (both title and variations)
    index.nameToSlug[title.toLowerCase()] = slug;
    index.nameToSlug[slug] = slug;

    // Store forward connections
    const connections = data.musical_connections as MusicalConnections | undefined;
    if (connections) {
      index.forward[slug] = {
        collaborators: connections.collaborators?.filter(c => c && c.trim()) || [],
        influenced: connections.influenced?.filter(c => c && c.trim()) || [],
        mentors: connections.mentors?.filter(c => c && c.trim()) || [],
      };
    }

    index.artistCount++;
  }

  // Second pass: build reverse connections
  for (const [sourceSlug, connections] of Object.entries(index.forward)) {
    // Process collaborators -> collaboratedWith (bidirectional)
    for (const collaborator of connections.collaborators || []) {
      const targetSlug = resolveArtistSlug(collaborator, index.nameToSlug);
      if (targetSlug) {
        if (!index.reverse[targetSlug]) {
          index.reverse[targetSlug] = {};
        }
        if (!index.reverse[targetSlug].collaboratedWith) {
          index.reverse[targetSlug].collaboratedWith = [];
        }
        if (!index.reverse[targetSlug].collaboratedWith.includes(sourceSlug)) {
          index.reverse[targetSlug].collaboratedWith.push(sourceSlug);
        }
      }
    }

    // Process influenced -> influencedBy
    for (const influenced of connections.influenced || []) {
      const targetSlug = resolveArtistSlug(influenced, index.nameToSlug);
      if (targetSlug) {
        if (!index.reverse[targetSlug]) {
          index.reverse[targetSlug] = {};
        }
        if (!index.reverse[targetSlug].influencedBy) {
          index.reverse[targetSlug].influencedBy = [];
        }
        if (!index.reverse[targetSlug].influencedBy.includes(sourceSlug)) {
          index.reverse[targetSlug].influencedBy.push(sourceSlug);
        }
      }
    }

    // Process mentors -> mentoredBy
    for (const mentor of connections.mentors || []) {
      const targetSlug = resolveArtistSlug(mentor, index.nameToSlug);
      if (targetSlug) {
        if (!index.reverse[targetSlug]) {
          index.reverse[targetSlug] = {};
        }
        if (!index.reverse[targetSlug].mentoredBy) {
          index.reverse[targetSlug].mentoredBy = [];
        }
        if (!index.reverse[targetSlug].mentoredBy.includes(sourceSlug)) {
          index.reverse[targetSlug].mentoredBy.push(sourceSlug);
        }
      }
    }
  }

  return index;
}

/**
 * Resolve an artist name to a slug using the mapping
 * Returns null if no match found
 */
function resolveArtistSlug(name: string, nameToSlug: Record<string, string>): string | null {
  if (!name || !name.trim()) return null;

  // Try exact match (case-insensitive)
  const normalized = name.toLowerCase().trim();
  if (nameToSlug[normalized]) {
    return nameToSlug[normalized];
  }

  // Try converting to slug format
  const asSlug = toArtistSlug(name);
  if (nameToSlug[asSlug]) {
    return nameToSlug[asSlug];
  }

  return null;
}

/**
 * Write the connections index to a JSON file
 */
export async function writeConnectionsIndex(
  artistsDir: string,
  outputPath: string
): Promise<void> {
  const index = await buildConnectionsIndex(artistsDir);

  // Ensure output directory exists
  const outputDir = path.dirname(outputPath);
  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true });
  }

  fs.writeFileSync(outputPath, JSON.stringify(index, null, 2));
  console.log(`Wrote connections index: ${index.artistCount} artists, ${outputPath}`);
}

/**
 * Get connections for an artist from the index
 */
export function getArtistConnections(
  index: ConnectionsIndex,
  slug: string
): { forward: MusicalConnections; reverse: ReverseConnections } {
  return {
    forward: index.forward[slug] || {},
    reverse: index.reverse[slug] || {},
  };
}

/**
 * Database-driven connections query
 * Returns bidirectional connection graph for an artist from live database
 */
export async function getArtistConnectionsFromDb(
  db: any,
  slug: string
): Promise<{
  forward: {
    collaborators: string[];
    influenced: string[];
    mentors: string[];
  };
  reverse: {
    collaboratedWith: string[];
    influencedBy: string[];
    mentoredBy: string[];
  };
  nameToSlug: Record<string, string>;
}> {
  // Query the artist's connections from database
  const artistRows = await db
    .prepare('SELECT slug, title, musical_connections FROM artists WHERE slug = ?')
    .bind(slug)
    .all();

  if (!artistRows.results?.length || !artistRows.results[0].musical_connections) {
    return {
      forward: { collaborators: [], influenced: [], mentors: [] },
      reverse: { collaboratedWith: [], influencedBy: [], mentoredBy: [] },
      nameToSlug: {},
    };
  }

  const artist = artistRows.results[0];

  // Parse the JSON connections
  const connections: MusicalConnections = JSON.parse(artist.musical_connections);

  // Build nameToSlug mapping from all artists in database
  const allArtistsRows = await db
    .prepare('SELECT slug, title FROM artists')
    .all();

  const nameToSlug: Record<string, string> = {};
  for (const row of allArtistsRows.results || []) {
    nameToSlug[row.title.toLowerCase()] = row.slug;
    nameToSlug[row.slug] = row.slug;
  }

  // Convert names to slugs
  const forward = {
    collaborators: nameListToSlugs(connections.collaborators || [], nameToSlug),
    influenced: nameListToSlugs(connections.influenced || [], nameToSlug),
    mentors: nameListToSlugs(connections.mentors || [], nameToSlug),
  };

  // Build reverse connections by querying other artists
  const reverse = await getReverseConnectionsFromDb(db, artist.title);

  return { forward, reverse, nameToSlug };
}

/**
 * Convert artist names to slugs using database-built name mapping
 */
function nameListToSlugs(
  names: string[],
  nameToSlug: Record<string, string>
): string[] {
  if (!names?.length) return [];

  return names
    .map((name) => {
      const normalized = name.toLowerCase().trim();
      return nameToSlug[normalized] || toArtistSlug(name);
    })
    .filter((slug) => nameToSlug[slug]); // Only include artists that exist in DB
}

/**
 * Find artists that reference this artist in their connections
 */
async function getReverseConnectionsFromDb(
  db: any,
  targetArtistName: string
): Promise<{
  collaboratedWith: string[];
  influencedBy: string[];
  mentoredBy: string[];
}> {
  // Query all artists with non-empty connections
  const allArtistsRows = await db
    .prepare(
      `SELECT slug, title, musical_connections
       FROM artists
       WHERE musical_connections IS NOT NULL
       AND musical_connections != '{}'
       AND musical_connections != 'null'`
    )
    .all();

  const reverse = {
    collaboratedWith: [] as string[],
    influencedBy: [] as string[],
    mentoredBy: [] as string[],
  };

  // Check each artist's connections for references to target artist
  for (const other of allArtistsRows.results || []) {
    if (!other.musical_connections) continue;

    try {
      const connections: MusicalConnections = JSON.parse(other.musical_connections);

      // Check if target artist is in their collaborators
      if (connections.collaborators?.some((name) => name === targetArtistName)) {
        reverse.collaboratedWith.push(other.slug);
      }

      // Check if target artist influenced them
      if (connections.influenced?.some((name) => name === targetArtistName)) {
        reverse.influencedBy.push(other.slug);
      }

      // Check if target artist mentored them
      if (connections.mentors?.some((name) => name === targetArtistName)) {
        reverse.mentoredBy.push(other.slug);
      }
    } catch (e) {
      console.error(`Failed to parse connections for ${other.slug}:`, e);
    }
  }

  return reverse;
}

// CLI entry point for generating the index
if (import.meta.url === `file://${process.argv[1]}`) {
  const artistsDir = path.join(process.cwd(), 'src/content/artists');
  const outputPath = path.join(process.cwd(), 'src/data/connections-index.json');

  writeConnectionsIndex(artistsDir, outputPath)
    .then(() => console.log('Done!'))
    .catch(err => {
      console.error('Failed to build connections index:', err);
      process.exit(1);
    });
}
