#!/usr/bin/env npx tsx
/**
 * Sync SQLite database to Cloudflare D1
 *
 * This script reads the local SQLite database and syncs changes to D1.
 * It's designed to run periodically to keep D1 in sync with the scraper's writes.
 *
 * Usage:
 *   npx tsx scripts/sync-to-d1.ts            # Sync to production D1
 *   npx tsx scripts/sync-to-d1.ts --dry-run  # Preview without changes
 */

import { execSync } from 'node:child_process';
import Database from 'better-sqlite3';

const CONFIG = {
  sqlitePath: process.env.DATABASE_PATH || './data/jazzapedia.db',
  databaseName: 'jazzapedia',
  batchSize: 100,
};

interface WwozTrack {
  id: number;
  artist: string;
  title: string;
  album: string | null;
  played_at: string;
  show_name: string | null;
  host_name: string | null;
  spotify_uri: string | null;
  spotify_url: string | null;
  confidence: number | null;
  status: string;
  scraped_at: string;
  created_at: string;
}

function escapeSQL(value: string | null | undefined): string {
  if (value === null || value === undefined) return 'NULL';
  return `'${value.replace(/'/g, "''")}'`;
}

async function main() {
  const isDryRun = process.argv.includes('--dry-run');

  console.log('📊 SQLite → D1 Sync');
  console.log(`   Source: ${CONFIG.sqlitePath}`);
  console.log(`   Mode: ${isDryRun ? 'DRY RUN' : 'LIVE'}`);
  console.log('');

  // Open SQLite database
  const db = new Database(CONFIG.sqlitePath, { readonly: true });

  // Get last synced timestamp from D1 (we'd need to track this)
  // For now, sync all tracks from the last 7 days
  const sevenDaysAgo = new Date();
  sevenDaysAgo.setDate(sevenDaysAgo.getDate() - 7);
  const cutoffDate = sevenDaysAgo.toISOString().split('T')[0];

  const tracks = db
    .prepare(
      `SELECT * FROM wwoz_tracks
       WHERE DATE(played_at) >= ?
       ORDER BY played_at ASC`
    )
    .all(cutoffDate) as WwozTrack[];

  console.log(`📝 Found ${tracks.length} tracks to sync from last 7 days`);

  if (tracks.length === 0) {
    console.log('✅ Nothing to sync');
    db.close();
    return;
  }

  // Generate SQL batches
  const batches: string[] = [];
  for (let i = 0; i < tracks.length; i += CONFIG.batchSize) {
    const batch = tracks.slice(i, i + CONFIG.batchSize);
    const values = batch
      .map(
        (t) =>
          `(${escapeSQL(t.artist)}, ${escapeSQL(t.title)}, ${escapeSQL(t.album)}, ${escapeSQL(t.played_at)}, ${escapeSQL(t.show_name)}, ${escapeSQL(t.host_name)}, ${escapeSQL(t.spotify_uri)}, ${escapeSQL(t.spotify_url)}, ${t.confidence ?? 'NULL'}, ${escapeSQL(t.status)}, ${escapeSQL(t.scraped_at)})`
      )
      .join(',\n');

    const sql = `
INSERT OR IGNORE INTO wwoz_tracks (artist, title, album, played_at, show_name, host_name, spotify_uri, spotify_url, confidence, status, scraped_at)
VALUES ${values};
    `.trim();

    batches.push(sql);
  }

  console.log(`📦 Generated ${batches.length} SQL batches`);

  if (isDryRun) {
    console.log('\n🔍 DRY RUN - Would execute:');
    console.log(`   ${batches.length} INSERT batches`);
    console.log(`   ${tracks.length} total tracks`);
  } else {
    // Execute batches against D1
    for (let i = 0; i < batches.length; i++) {
      const tempFile = `/tmp/d1-sync-batch-${i}.sql`;
      require('fs').writeFileSync(tempFile, batches[i]);

      try {
        execSync(
          `npx wrangler d1 execute ${CONFIG.databaseName} --remote --file=${tempFile}`,
          { stdio: 'inherit' }
        );
        console.log(`   ✓ Batch ${i + 1}/${batches.length} synced`);
      } catch (error) {
        console.error(`   ✗ Batch ${i + 1} failed:`, error);
      }

      require('fs').unlinkSync(tempFile);
    }

    console.log('\n✅ Sync complete!');
  }

  db.close();
}

main().catch(console.error);
