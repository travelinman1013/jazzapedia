#!/usr/bin/env npx tsx
/**
 * Export WWOZ database changes to SQL file for D1 import
 *
 * This script exports incremental changes from local SQLite to a SQL file
 * that can be imported to Cloudflare D1. It tracks the last export timestamp
 * to only export new/updated records.
 *
 * Usage:
 *   npx tsx scripts/export-wwoz-sql.ts
 *   npx tsx scripts/export-wwoz-sql.ts --full  # Export all data (ignore timestamp)
 *
 * Output: scripts/.wwoz-export/wwoz-sync.sql
 */

import fs from 'node:fs';
import path from 'node:path';
import Database from 'better-sqlite3';

// ============================================================
// CONFIGURATION
// ============================================================

const REPO_ROOT = path.resolve(process.cwd(), '../..');
const DATABASE_PATH = process.env.DATABASE_PATH || path.join(REPO_ROOT, 'data/jazzapedia.db');
const EXPORT_DIR = path.join(process.cwd(), 'scripts/.wwoz-export');
const EXPORT_FILE = path.join(EXPORT_DIR, 'wwoz-sync.sql');
const TIMESTAMP_FILE = path.join(EXPORT_DIR, '.last-export-time');

const args = process.argv.slice(2);
const isFull = args.includes('--full');

// ============================================================
// HELPER FUNCTIONS
// ============================================================

function escapeSql(value: string | number | null | undefined): string {
  if (value === null || value === undefined) return 'NULL';
  if (typeof value === 'number') return value.toString();
  return `'${value.toString().replace(/'/g, "''")}'`;
}

function escapeJson(obj: any): string {
  if (obj === null || obj === undefined) return 'NULL';
  return escapeSql(JSON.stringify(obj));
}

// ============================================================
// MAIN LOGIC
// ============================================================

async function main() {
  console.log('============================================================');
  console.log('WWOZ SQL Export for D1');
  console.log('============================================================');
  console.log(`Mode: ${isFull ? 'FULL' : 'INCREMENTAL'}`);
  console.log(`Database: ${DATABASE_PATH}`);
  console.log(`Export to: ${EXPORT_FILE}`);
  console.log('');

  // Ensure export directory exists
  fs.mkdirSync(EXPORT_DIR, { recursive: true });

  // Open database
  if (!fs.existsSync(DATABASE_PATH)) {
    console.error(`ERROR: Database not found at ${DATABASE_PATH}`);
    process.exit(1);
  }

  const db = new Database(DATABASE_PATH, { readonly: true });

  // Get last export timestamp (for incremental)
  let lastExportTime = '1970-01-01 00:00:00';
  if (!isFull && fs.existsSync(TIMESTAMP_FILE)) {
    lastExportTime = fs.readFileSync(TIMESTAMP_FILE, 'utf-8').trim();
    console.log(`Last export: ${lastExportTime}`);
  }

  const sqlStatements: string[] = [];

  // ============================================================
  // EXPORT WWOZ_DAYS
  // ============================================================

  const daysQuery = isFull
    ? 'SELECT * FROM wwoz_days ORDER BY date'
    : 'SELECT * FROM wwoz_days WHERE updated_at > ? ORDER BY date';

  const daysParams = isFull ? [] : [lastExportTime];
  const days = db.prepare(daysQuery).all(...daysParams) as any[];

  console.log(`Found ${days.length} days to export`);

  for (const day of days) {
    const sql = `INSERT INTO wwoz_days (date, playlist_url, stats_json, source_url, created_at, updated_at)
VALUES (
  ${escapeSql(day.date)},
  ${escapeSql(day.playlist_url)},
  ${escapeJson(day.stats_json)},
  ${escapeSql(day.source_url)},
  ${escapeSql(day.created_at)},
  ${escapeSql(day.updated_at)}
)
ON CONFLICT(date) DO UPDATE SET
  playlist_url = COALESCE(excluded.playlist_url, playlist_url),
  stats_json = excluded.stats_json,
  source_url = COALESCE(excluded.source_url, source_url),
  updated_at = excluded.updated_at;`;

    sqlStatements.push(sql);
  }

  // ============================================================
  // EXPORT WWOZ_TRACKS (per day)
  // ============================================================

  let totalTracks = 0;
  for (const day of days) {
    // For each day that changed, export ALL its tracks (easier than tracking individual track changes)
    const tracks = db.prepare('SELECT * FROM wwoz_tracks WHERE date = ? ORDER BY time').all(day.date) as any[];

    if (tracks.length === 0) continue;

    // Delete existing tracks for this day (we'll re-insert them all)
    sqlStatements.push(`DELETE FROM wwoz_tracks WHERE date = ${escapeSql(day.date)};`);

    // Insert all tracks for this day
    for (const track of tracks) {
      const sql = `INSERT INTO wwoz_tracks (date, time, artist, title, album, genres, show_name, host, spotify_url, status, confidence, created_at)
VALUES (
  ${escapeSql(track.date)},
  ${escapeSql(track.time)},
  ${escapeSql(track.artist)},
  ${escapeSql(track.title)},
  ${escapeSql(track.album)},
  ${escapeSql(track.genres)},
  ${escapeSql(track.show_name)},
  ${escapeSql(track.host)},
  ${escapeSql(track.spotify_url)},
  ${escapeSql(track.status)},
  ${escapeSql(track.confidence)},
  ${escapeSql(track.created_at)}
);`;

      sqlStatements.push(sql);
      totalTracks++;
    }
  }

  console.log(`Found ${totalTracks} tracks to export`);

  // ============================================================
  // WRITE SQL FILE
  // ============================================================

  if (sqlStatements.length === 0) {
    console.log('');
    console.log('No changes to export. SQL file not created.');
    console.log('');
    process.exit(0);
  }

  const header = `-- WWOZ Database Export
-- Generated: ${new Date().toISOString()}
-- Mode: ${isFull ? 'FULL' : 'INCREMENTAL'}
-- Last export: ${lastExportTime}
-- Days: ${days.length}
-- Tracks: ${totalTracks}

`;

  const sqlContent = header + sqlStatements.join('\n\n');
  fs.writeFileSync(EXPORT_FILE, sqlContent, 'utf-8');

  // Update last export timestamp
  const now = new Date().toISOString().replace('T', ' ').substring(0, 19);
  fs.writeFileSync(TIMESTAMP_FILE, now, 'utf-8');

  console.log('');
  console.log('============================================================');
  console.log('Export complete!');
  console.log(`  SQL file: ${EXPORT_FILE}`);
  console.log(`  Size: ${(fs.statSync(EXPORT_FILE).size / 1024).toFixed(1)} KB`);
  console.log(`  Statements: ${sqlStatements.length}`);
  console.log('============================================================');
  console.log('');

  db.close();
}

main().catch((err) => {
  console.error('ERROR:', err);
  process.exit(1);
});
