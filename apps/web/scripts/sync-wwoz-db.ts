#!/usr/bin/env npx tsx
/**
 * WWOZ Database Sync: Sync WWOZ archives from markdown to database
 *
 * This script:
 * 1. Parses WWOZ markdown files from archives/ directory (YYYY/MM/ structure)
 * 2. Syncs day-level data to wwoz_days table
 * 3. Syncs track-level data to wwoz_tracks table
 *
 * Usage:
 *   npx tsx scripts/sync-wwoz-db.ts --sqlite           # Incremental sync to local SQLite
 *   npx tsx scripts/sync-wwoz-db.ts --remote           # Incremental sync to production D1
 *   npx tsx scripts/sync-wwoz-db.ts --sqlite --full    # Full sync all archives to SQLite
 *   npx tsx scripts/sync-wwoz-db.ts --dry-run          # Preview what would be synced
 *
 * Options:
 *   --local     Sync to local D1 database (wrangler dev)
 *   --remote    Sync to production D1 database
 *   --sqlite    Sync to local SQLite database
 *   --dry-run   Show what would be synced without making changes
 *   --full      Force full sync of all archives (ignore incremental)
 */

import fs from 'node:fs';
import path from 'node:path';
import { execSync } from 'node:child_process';
import matter from 'gray-matter';

// ============================================================
// CONFIGURATION
// ============================================================

const CONFIG = {
  // Archives directory (YYYY/MM/ structure with human-readable filenames)
  wwozDir: process.env.WWOZ_DIR || '../../archives',
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
// FILE DISCOVERY
// ============================================================

/**
 * Find all archive files in YYYY/MM/ directory structure
 * Returns array of full file paths
 */
function findArchiveFiles(baseDir: string): string[] {
  const files: string[] = [];

  if (!fs.existsSync(baseDir)) {
    return files;
  }

  // Walk YYYY directories
  const yearDirs = fs.readdirSync(baseDir)
    .filter(d => /^20\d{2}$/.test(d))
    .sort();

  for (const year of yearDirs) {
    const yearPath = path.join(baseDir, year);
    if (!fs.statSync(yearPath).isDirectory()) continue;

    // Walk MM directories
    const monthDirs = fs.readdirSync(yearPath)
      .filter(d => /^(0[1-9]|1[0-2])$/.test(d))
      .sort();

    for (const month of monthDirs) {
      const monthPath = path.join(yearPath, month);
      if (!fs.statSync(monthPath).isDirectory()) continue;

      // Find all .md files in this month
      const mdFiles = fs.readdirSync(monthPath)
        .filter(f => f.endsWith('.md') && f.startsWith('WWOZ'))
        .map(f => path.join(monthPath, f));

      files.push(...mdFiles);
    }
  }

  return files.sort();
}

// ============================================================
// PARSING FUNCTIONS
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

/**
 * Parse a WWOZ archive file
 * Uses frontmatter 'date' field (ISO format) instead of parsing filename
 */
function parseWWOZFile(filePath: string): WWOZDay | null {
  try {
    const content = fs.readFileSync(filePath, 'utf-8');
    const { data: frontmatter, content: body } = matter(content);

    // Get date from frontmatter (already in ISO format: "YYYY-MM-DD")
    const date = frontmatter.date;
    if (!date || !/^\d{4}-\d{2}-\d{2}$/.test(date)) {
      console.warn(`  Skipping ${path.basename(filePath)}: invalid or missing date in frontmatter`);
      return null;
    }

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
// DATABASE QUERIES
// ============================================================

/**
 * Get the latest synced date from the database
 */
function getLatestSyncedDate(useSQLite: boolean, isRemote: boolean): string | null {
  const query = "SELECT MAX(date) as latest FROM wwoz_days;";

  try {
    if (useSQLite) {
      const dbPath = path.resolve(process.cwd(), CONFIG.sqliteDbPath);
      const result = execSync(`sqlite3 "${dbPath}" "${query}"`, {
        encoding: 'utf-8',
      }).trim();
      return result || null;
    } else {
      const location = isRemote ? '--remote' : '--local';
      const result = execSync(
        `npx wrangler d1 execute ${CONFIG.databaseName} ${location} --command "${query}" --json`,
        { encoding: 'utf-8' }
      );
      const parsed = JSON.parse(result);
      const latest = parsed?.[0]?.results?.[0]?.latest;
      return latest || null;
    }
  } catch {
    // Table might not exist yet or be empty
    return null;
  }
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
  const isDryRun = args.includes('--dry-run');
  const isFull = args.includes('--full');
  const useSQLite = args.includes('--sqlite');

  console.log('='.repeat(60));
  console.log('WWOZ Database Sync');
  console.log('='.repeat(60));
  console.log(`Target: ${useSQLite ? 'SQLite' : (isRemote ? 'D1 (remote)' : 'D1 (local)')}`);
  console.log(`Mode: ${isDryRun ? 'DRY RUN' : 'LIVE'} | ${isFull ? 'FULL SYNC' : 'INCREMENTAL'}`);
  console.log(`Archives Dir: ${CONFIG.wwozDir}`);
  console.log('');

  // Find all WWOZ archive files
  const wwozDir = path.resolve(process.cwd(), CONFIG.wwozDir);
  if (!fs.existsSync(wwozDir)) {
    console.error(`Archives directory not found: ${wwozDir}`);
    process.exit(1);
  }

  const files = findArchiveFiles(wwozDir);
  console.log(`Found ${files.length} WWOZ archive files`);

  // Parse all files
  let days: WWOZDay[] = [];
  for (const filePath of files) {
    const day = parseWWOZFile(filePath);
    if (day) {
      days.push(day);
    }
  }

  // Sort by date
  days.sort((a, b) => a.date.localeCompare(b.date));
  console.log(`Parsed ${days.length} valid WWOZ days`);

  // Incremental filtering (unless --full)
  if (!isFull && !isDryRun) {
    const latestSynced = getLatestSyncedDate(useSQLite, isRemote);
    if (latestSynced) {
      const originalCount = days.length;

      // Calculate cutoff date: 3 days ago to catch ongoing updates
      const threeDaysAgo = new Date();
      threeDaysAgo.setDate(threeDaysAgo.getDate() - 3);
      const cutoff = threeDaysAgo.toISOString().split('T')[0];

      // Re-sync anything from the last 3 days OR newer than latest synced
      days = days.filter(d => d.date >= cutoff || d.date > latestSynced);

      console.log(`Latest synced: ${latestSynced}`);
      console.log(`Re-sync cutoff: ${cutoff} (last 3 days)`);
      console.log(`Days to sync: ${days.length} (filtered from ${originalCount})`);
    } else {
      console.log('No existing data found - will sync all days');
    }
  }

  // Calculate totals
  const totalTracks = days.reduce((sum, day) => sum + day.tracks.length, 0);
  console.log(`Total tracks to sync: ${totalTracks}`);
  console.log('');

  if (days.length === 0) {
    console.log('No new days to sync. Use --full to force complete resync.');
    return;
  }

  if (isDryRun) {
    console.log('DRY RUN - No changes will be made');
    console.log('');
    console.log('Days to sync:');
    for (const day of days) {
      console.log(`  ${day.date}: ${day.tracks.length} tracks`);
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
