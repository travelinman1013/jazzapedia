#!/usr/bin/env npx tsx
/**
 * Backfill created_at dates from Obsidian vault file creation times
 *
 * Usage:
 *   npx tsx scripts/backfill-created-at.ts --vault /path/to/vault/Artists
 *   npx tsx scripts/backfill-created-at.ts --vault /path/to/vault/Artists --dry-run
 *   npx tsx scripts/backfill-created-at.ts --vault /path/to/vault/Artists --sql-only > updates.sql
 */

import { readFileSync, readdirSync, statSync } from 'fs';
import { join } from 'path';
import Database from 'better-sqlite3';

const args = process.argv.slice(2);
const vaultIndex = args.indexOf('--vault');
const dryRun = args.includes('--dry-run');
const sqlOnly = args.includes('--sql-only');

if (vaultIndex === -1 || !args[vaultIndex + 1]) {
  console.error('Usage: npx tsx scripts/backfill-created-at.ts --vault /path/to/vault/Artists [--dry-run] [--sql-only]');
  process.exit(1);
}

const vaultPath = args[vaultIndex + 1];
const dbPath = process.env.DATABASE_PATH || './data/jazzapedia.db';

interface ArtistFile {
  filename: string;
  slug: string;
  createdAt: Date;
}

function extractSlugFromFrontmatter(content: string): string | null {
  // Simple regex to extract wiki_slug from YAML frontmatter
  const slugMatch = content.match(/^wiki_slug:\s*(.+)$/m);
  if (!slugMatch) return null;

  // Remove quotes if present
  return slugMatch[1].trim().replace(/^['"]|['"]$/g, '');
}

function getFileCreationDate(filepath: string): Date {
  const stats = statSync(filepath);
  // birthtime is the file creation time on macOS/Windows
  return stats.birthtime;
}

function formatDateForSqlite(date: Date): string {
  return date.toISOString().replace('T', ' ').replace('Z', '');
}

async function main() {
  // Read all markdown files from vault
  const files = readdirSync(vaultPath).filter(f => f.endsWith('.md'));

  if (!sqlOnly) {
    console.log(`Found ${files.length} artist card files in ${vaultPath}`);
  }

  const artistFiles: ArtistFile[] = [];

  for (const filename of files) {
    const filepath = join(vaultPath, filename);
    const content = readFileSync(filepath, 'utf-8');
    const slug = extractSlugFromFrontmatter(content);

    if (slug) {
      const createdAt = getFileCreationDate(filepath);
      artistFiles.push({ filename, slug, createdAt });
    }
  }

  if (!sqlOnly) {
    console.log(`Extracted ${artistFiles.length} slugs with creation dates`);
  }

  if (sqlOnly) {
    // Output SQL statements only
    console.log('-- Backfill created_at from Obsidian vault file creation dates');
    console.log(`-- Generated: ${new Date().toISOString()}`);
    console.log(`-- Source: ${vaultPath}`);
    console.log('');

    for (const { slug, createdAt } of artistFiles) {
      const dateStr = formatDateForSqlite(createdAt);
      // Only update if created_at is NULL
      console.log(`UPDATE artists SET created_at = '${dateStr}' WHERE slug = '${slug}' AND created_at IS NULL;`);
    }
    return;
  }

  if (dryRun) {
    console.log('\n--- DRY RUN (no changes will be made) ---\n');
    console.log('Sample updates:');
    for (const { slug, createdAt } of artistFiles.slice(0, 10)) {
      console.log(`  ${slug}: ${formatDateForSqlite(createdAt)}`);
    }
    if (artistFiles.length > 10) {
      console.log(`  ... and ${artistFiles.length - 10} more`);
    }
    return;
  }

  // Connect to database and update
  const db = new Database(dbPath);

  const updateStmt = db.prepare(`
    UPDATE artists
    SET created_at = ?
    WHERE slug = ? AND created_at IS NULL
  `);

  let updated = 0;
  let notFound = 0;
  let alreadySet = 0;

  const checkStmt = db.prepare('SELECT slug, created_at FROM artists WHERE slug = ?');

  db.transaction(() => {
    for (const { slug, createdAt } of artistFiles) {
      const existing = checkStmt.get(slug) as { slug: string; created_at: string | null } | undefined;

      if (!existing) {
        notFound++;
        continue;
      }

      if (existing.created_at) {
        alreadySet++;
        continue;
      }

      const result = updateStmt.run(formatDateForSqlite(createdAt), slug);
      if (result.changes > 0) {
        updated++;
      }
    }
  })();

  db.close();

  console.log('\n--- Results ---');
  console.log(`Updated: ${updated}`);
  console.log(`Already had created_at: ${alreadySet}`);
  console.log(`Not found in database: ${notFound}`);
  console.log(`Total processed: ${artistFiles.length}`);
}

main().catch(err => {
  console.error('Error:', err);
  process.exit(1);
});
