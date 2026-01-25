#!/usr/bin/env npx tsx
/**
 * WWOZ Database Sync: Sync WWOZ archives from markdown to database
 *
 * This script:
 * 1. Parses WWOZ markdown files from src/content/wwoz/
 * 2. Syncs day-level data to wwoz_days table
 * 3. Syncs track-level data to wwoz_tracks table
 *
 * Usage:
 *   npx tsx scripts/sync-wwoz-db.ts --local          # Sync to local SQLite
 *   npx tsx scripts/sync-wwoz-db.ts --remote         # Sync to production D1
 *   npx tsx scripts/sync-wwoz-db.ts --local --dry-run  # Preview changes
 *
 * Options:
 *   --local     Sync to local SQLite database (default)
 *   --remote    Sync to production D1 database
 *   --dry-run   Show what would be synced without making changes
 *   --force     Force sync all days (ignore existing)
 */

import fs from 'node:fs';
import path from 'node:path';
import { execSync } from 'node:child_process';
import matter from 'gray-matter';

// ============================================================
// CONFIGURATION
// ============================================================

const CONFIG = {
  wwozDir: process.env.WWOZ_DIR || './src/content/wwoz',
  databaseName: 'jazzapedia',
  sqliteDbPath: process.env.DATABASE_PATH || '../../data/jazzapedia.db',
  batchSize: 100,
};

// ============================================================
// TYPES
// ============================================================

interface WWOZTrack {
  time: string;
  artist: string;
  title: string;
  album?: string;
  genres: string[];
  show: string;
  host?: string;
  status: 'found' | 'not_found';
  confidence?: number;
  spotifyUrl?: string;
}

interface WWOZStats {
  totalTracks: number;
  successfullyFound: number;
  notFound: number;
  lowConfidence: number;
  duplicates: number;
}

interface WWOZDay {
  date: string;
  sourceUrl?: string;
  stats: WWOZStats | null;
  tracks: WWOZTrack[];
}

// ============================================================
// PARSING FUNCTIONS (from content/config.ts)
// ============================================================

function parseWWOZStats(content: string): WWOZStats | null {
  const statsMatch = content.match(/<!-- wwoz:stats:start -->([\s\S]*?)<!-- wwoz:stats:end -->/);
  if (!statsMatch) return null;

  const statsBlock = statsMatch[1];
  const stats: WWOZStats = {
    totalTracks: 0,
    successfullyFound: 0,
    notFound: 0,
    lowConfidence: 0,
    duplicates: 0,
  };

  const rows = statsBlock.match(/\|\s*([^|]+)\s*\|\s*(\d+)\s*\|/g);
  if (rows) {
    for (const row of rows) {
      const match = row.match(/\|\s*([^|]+)\s*\|\s*(\d+)\s*\|/);
      if (match) {
        const [, label, value] = match;
        const numValue = parseInt(value, 10);
        switch (label.trim().toLowerCase()) {
          case 'total tracks':
            stats.totalTracks = numValue;
            break;
          case 'successfully found':
            stats.successfullyFound = numValue;
            break;
          case 'not found':
            stats.notFound = numValue;
            break;
          case 'low confidence':
            stats.lowConfidence = numValue;
            break;
          case 'duplicates':
            stats.duplicates = numValue;
            break;
        }
      }
    }
  }

  return stats;
}

function parseWWOZTracks(content: string): WWOZTrack[] {
  const tracks: WWOZTrack[] = [];

  const tracksSection = content.match(/## Tracks\s*\n([\s\S]*?)(?=\n##|$)/);
  if (!tracksSection) return tracks;

  const lines = tracksSection[1].trim().split('\n');
  for (const line of lines) {
    if (line.includes('| Time |') || line.includes('| :---')) continue;

    const cells = line.split('|').map(c => c.trim()).filter(c => c);
    if (cells.length < 8) continue;

    const [time, artist, title, album, genresStr, show, host, status, confidenceStr, spotifyCell] = cells;

    const genres = genresStr && genresStr !== '-'
      ? genresStr.split(',').map(g => g.trim()).filter(g => g)
      : [];

    let confidence: number | undefined;
    if (confidenceStr && confidenceStr !== '-') {
      const confMatch = confidenceStr.match(/([\d.]+)%?/);
      if (confMatch) {
        confidence = parseFloat(confMatch[1]);
      }
    }

    let spotifyUrl: string | undefined;
    if (spotifyCell && spotifyCell !== '-') {
      const urlMatch = spotifyCell.match(/\[Open\]\((https:\/\/[^)]+)\)/);
      if (urlMatch) {
        spotifyUrl = urlMatch[1];
      }
    }

    tracks.push({
      time,
      artist,
      title,
      album: album && album !== '-' ? album : undefined,
      genres,
      show,
      host: host && host !== '-' ? host : undefined,
      status: status.includes('✅') ? 'found' : 'not_found',
      confidence,
      spotifyUrl,
    });
  }

  return tracks;
}

function parseWWOZFile(filePath: string): WWOZDay | null {
  try {
    const content = fs.readFileSync(filePath, 'utf-8');
    const { data: frontmatter, content: body } = matter(content);

    const filename = path.basename(filePath);
    const dateMatch = filename.match(/^(\d{4}-\d{2}-\d{2})\.md$/);
    if (!dateMatch) return null;

    const date = dateMatch[1];
    const stats = parseWWOZStats(body);
    const tracks = parseWWOZTracks(body);

    return {
      date,
      sourceUrl: frontmatter.source_url,
      stats,
      tracks,
    };
  } catch (error) {
    console.error(`Error parsing ${filePath}:`, error);
    return null;
  }
}

// ============================================================
// SQL GENERATION
// ============================================================

function escapeSql(str: string | null | undefined): string {
  if (str === null || str === undefined) return 'NULL';
  return "'" + str.replace(/'/g, "''") + "'";
}

function escapeJson(obj: any): string {
  if (obj === null || obj === undefined) return 'NULL';
  const jsonStr = JSON.stringify(obj);
  return escapeSql(jsonStr);
}

function generateDaySQL(day: WWOZDay): string {
  return `INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  ${escapeSql(day.date)},
  NULL,
  ${escapeJson(day.stats)},
  ${escapeSql(day.sourceUrl)},
  datetime('now'),
  datetime('now')
)
ON CONFLICT(date) DO UPDATE SET
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = datetime('now');`;
}

function generateTrackSQL(date: string, track: WWOZTrack): string {
  return `INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  ${escapeSql(date)},
  ${escapeSql(track.time)},
  ${escapeSql(track.artist)},
  ${escapeSql(track.title)},
  ${escapeSql(track.album)},
  ${escapeSql(track.genres.join(', '))},
  ${escapeSql(track.show)},
  ${escapeSql(track.host)},
  ${escapeSql(track.spotifyUrl)},
  ${escapeSql(track.status)},
  ${track.confidence !== undefined ? track.confidence : 'NULL'},
  datetime('now')
)
ON CONFLICT(date, time, artist, title) DO UPDATE SET
  album = COALESCE(excluded.album, album),
  genres = excluded.genres,
  show_name = excluded.show_name,
  host = COALESCE(excluded.host, host),
  spotify_url = COALESCE(excluded.spotify_url, spotify_url),
  status = excluded.status,
  confidence = excluded.confidence;`;
}

// ============================================================
// DATABASE EXECUTION
// ============================================================

function executeD1(sql: string, isRemote: boolean): void {
  const location = isRemote ? '--remote' : '--local';
  const tempFile = `/tmp/wwoz-sync-${Date.now()}.sql`;
  fs.writeFileSync(tempFile, sql);

  try {
    execSync(`npx wrangler d1 execute ${CONFIG.databaseName} ${location} --file="${tempFile}"`, {
      stdio: 'inherit',
      encoding: 'utf-8',
    });
  } finally {
    fs.unlinkSync(tempFile);
  }
}

function executeSQLite(sql: string): void {
  const dbPath = path.resolve(process.cwd(), CONFIG.sqliteDbPath);
  const tempFile = `/tmp/wwoz-sync-sqlite-${Date.now()}.sql`;
  fs.writeFileSync(tempFile, sql);

  try {
    execSync(`sqlite3 "${dbPath}" < "${tempFile}"`, {
      stdio: 'inherit',
      encoding: 'utf-8',
    });
  } finally {
    fs.unlinkSync(tempFile);
  }
}

// ============================================================
// MAIN SYNC LOGIC
// ============================================================

async function main() {
  const args = process.argv.slice(2);
  const isRemote = args.includes('--remote');
  const isLocal = args.includes('--local') || !isRemote;
  const isDryRun = args.includes('--dry-run');
  const isForce = args.includes('--force');
  const useSQLite = args.includes('--sqlite'); // For local SQLite sync

  console.log('='.repeat(60));
  console.log('WWOZ Database Sync');
  console.log('='.repeat(60));
  console.log(`Target: ${useSQLite ? 'SQLite' : (isRemote ? 'D1 (remote)' : 'D1 (local)')}`);
  console.log(`Mode: ${isDryRun ? 'DRY RUN' : 'LIVE'}`);
  console.log(`WWOZ Dir: ${CONFIG.wwozDir}`);
  console.log('');

  // Find all WWOZ markdown files
  const wwozDir = path.resolve(process.cwd(), CONFIG.wwozDir);
  if (!fs.existsSync(wwozDir)) {
    console.error(`WWOZ directory not found: ${wwozDir}`);
    process.exit(1);
  }

  const files = fs.readdirSync(wwozDir)
    .filter(f => f.endsWith('.md'))
    .sort();

  console.log(`Found ${files.length} WWOZ archive files`);

  // Parse all files
  const days: WWOZDay[] = [];
  for (const file of files) {
    const filePath = path.join(wwozDir, file);
    const day = parseWWOZFile(filePath);
    if (day) {
      days.push(day);
    }
  }

  console.log(`Parsed ${days.length} valid WWOZ days`);

  // Calculate totals
  const totalTracks = days.reduce((sum, day) => sum + day.tracks.length, 0);
  console.log(`Total tracks to sync: ${totalTracks}`);
  console.log('');

  if (isDryRun) {
    console.log('DRY RUN - No changes will be made');
    console.log('');
    for (const day of days.slice(0, 5)) {
      console.log(`  ${day.date}: ${day.tracks.length} tracks`);
    }
    if (days.length > 5) {
      console.log(`  ... and ${days.length - 5} more days`);
    }
    return;
  }

  // Process in batches
  console.log('Syncing days...');
  for (let i = 0; i < days.length; i += CONFIG.batchSize) {
    const batch = days.slice(i, i + CONFIG.batchSize);
    const sql = batch.map(day => generateDaySQL(day)).join('\n');

    console.log(`  Processing days ${i + 1}-${Math.min(i + CONFIG.batchSize, days.length)}...`);

    if (useSQLite) {
      executeSQLite(sql);
    } else {
      executeD1(sql, isRemote);
    }
  }

  console.log('');
  console.log('Syncing tracks...');
  let trackCount = 0;

  for (const day of days) {
    if (day.tracks.length === 0) continue;

    // Process tracks in batches per day
    for (let i = 0; i < day.tracks.length; i += CONFIG.batchSize) {
      const batch = day.tracks.slice(i, i + CONFIG.batchSize);
      const sql = batch.map(track => generateTrackSQL(day.date, track)).join('\n');

      if (useSQLite) {
        executeSQLite(sql);
      } else {
        executeD1(sql, isRemote);
      }

      trackCount += batch.length;
    }

    console.log(`  ${day.date}: ${day.tracks.length} tracks synced`);
  }

  console.log('');
  console.log('='.repeat(60));
  console.log(`WWOZ sync complete!`);
  console.log(`  Days synced: ${days.length}`);
  console.log(`  Tracks synced: ${trackCount}`);
  console.log('='.repeat(60));
}

main().catch(err => {
  console.error('Sync failed:', err);
  process.exit(1);
});
