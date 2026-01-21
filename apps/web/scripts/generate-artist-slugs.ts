#!/usr/bin/env npx tsx
/**
 * Generate Artist Slugs Index
 *
 * Creates a static JSON file containing all artist slugs from the database.
 * Used by WWOZ archive pages to link artist names without runtime D1 queries.
 *
 * Usage:
 *   npx tsx scripts/generate-artist-slugs.ts              # From SQLite (default)
 *   npx tsx scripts/generate-artist-slugs.ts --remote     # From D1 (production)
 *
 * Output: src/data/artist-slugs.json
 */

import fs from 'node:fs';
import path from 'node:path';
import { execSync } from 'node:child_process';

// ============================================================
// CONFIGURATION
// ============================================================

const CONFIG = {
  sqlitePath: process.env.DATABASE_PATH || './data/jazzapedia.db',
  outputPath: './src/data/artist-slugs.json',
  d1DatabaseName: 'jazzapedia',
};

// ============================================================
// MAIN
// ============================================================

async function main() {
  const args = process.argv.slice(2);
  const useRemote = args.includes('--remote');

  console.log(`\n🎵 Generating artist slugs index...`);
  console.log(`   Source: ${useRemote ? 'D1 (remote)' : 'SQLite (local)'}\n`);

  let slugs: string[];

  if (useRemote) {
    slugs = await fetchFromD1();
  } else {
    slugs = await fetchFromSQLite();
  }

  // Sort alphabetically for consistent output
  slugs.sort();

  // Write to JSON file
  const outputDir = path.dirname(CONFIG.outputPath);
  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true });
  }

  const output = {
    generated: new Date().toISOString(),
    count: slugs.length,
    slugs,
  };

  fs.writeFileSync(CONFIG.outputPath, JSON.stringify(output, null, 2));

  console.log(`✅ Generated ${CONFIG.outputPath}`);
  console.log(`   ${slugs.length} artist slugs indexed\n`);
}

async function fetchFromSQLite(): Promise<string[]> {
  const Database = (await import('better-sqlite3')).default;

  if (!fs.existsSync(CONFIG.sqlitePath)) {
    console.error(`❌ SQLite database not found: ${CONFIG.sqlitePath}`);
    process.exit(1);
  }

  const db = new Database(CONFIG.sqlitePath, { readonly: true });
  const rows = db.prepare('SELECT slug FROM artists ORDER BY slug').all() as { slug: string }[];
  db.close();

  return rows.map(r => r.slug);
}

async function fetchFromD1(): Promise<string[]> {
  // Use wrangler to query D1
  const query = 'SELECT slug FROM artists ORDER BY slug';

  try {
    const result = execSync(
      `npx wrangler d1 execute ${CONFIG.d1DatabaseName} --remote --json --command="${query}"`,
      { encoding: 'utf-8', stdio: ['pipe', 'pipe', 'pipe'] }
    );

    const parsed = JSON.parse(result);
    const rows = parsed[0]?.results || [];
    return rows.map((r: { slug: string }) => r.slug);
  } catch (error) {
    console.error('❌ Failed to query D1:', error);
    process.exit(1);
  }
}

main().catch(console.error);
