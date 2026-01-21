#!/usr/bin/env npx tsx
/**
 * Sync WWOZ archive files from Obsidian vault to web content directory
 *
 * This script syncs WWOZ daily archive markdown files, transforming filenames
 * from display format ("WWOZ Monday, Jan. 20, 2026.md") to ISO format ("2026-01-20.md").
 *
 * Usage:
 *   npx tsx scripts/sync-wwoz.ts              # Incremental sync
 *   npx tsx scripts/sync-wwoz.ts --dry-run    # Preview what would be synced
 *   npx tsx scripts/sync-wwoz.ts --force      # Sync all files (ignore timestamps)
 *   npx tsx scripts/sync-wwoz.ts --verbose    # Show detailed output
 *
 * Environment variables:
 *   WWOZ_SOURCE  - Source directory (default: ../../archives or Obsidian vault)
 */

import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

// ============================================================
// CONFIGURATION
// ============================================================

const CONFIG = {
  // Default source: archives symlink in repo root, fallback to Obsidian vault
  sourceDir: process.env.WWOZ_SOURCE ||
    (fs.existsSync(path.resolve(__dirname, '../../../archives'))
      ? path.resolve(__dirname, '../../../archives')
      : '/Users/maxwell/LETSGO/MaxVault/01_Projects/wwoztracker'),
  destDir: path.resolve(__dirname, '../src/content/wwoz'),
};

// ============================================================
// TYPES
// ============================================================

interface SyncResult {
  synced: string[];
  skipped: string[];
  errors: { file: string; error: string }[];
}

interface ParsedArgs {
  dryRun: boolean;
  force: boolean;
  verbose: boolean;
}

// ============================================================
// ARGUMENT PARSING
// ============================================================

function parseArgs(): ParsedArgs {
  const args = process.argv.slice(2);
  return {
    dryRun: args.includes('--dry-run'),
    force: args.includes('--force'),
    verbose: args.includes('--verbose'),
  };
}

// ============================================================
// HELPER FUNCTIONS
// ============================================================

/**
 * Find all WWOZ markdown files recursively in source directory
 */
function findWwozFiles(dir: string): string[] {
  const files: string[] = [];

  if (!fs.existsSync(dir)) {
    return files;
  }

  const entries = fs.readdirSync(dir, { withFileTypes: true });

  for (const entry of entries) {
    const fullPath = path.join(dir, entry.name);

    if (entry.isDirectory()) {
      // Recurse into subdirectories (YYYY/MM structure)
      files.push(...findWwozFiles(fullPath));
    } else if (entry.isFile() && entry.name.startsWith('WWOZ ') && entry.name.endsWith('.md')) {
      files.push(fullPath);
    }
  }

  return files;
}

/**
 * Extract date from frontmatter of a markdown file
 * Handles both quoted and unquoted dates: date: "2025-11-02" or date: 2025-11-02
 */
function extractDateFromFrontmatter(filePath: string): string | null {
  try {
    const content = fs.readFileSync(filePath, 'utf-8');
    const match = content.match(/^date:\s*"?(\d{4}-\d{2}-\d{2})"?/m);
    return match ? match[1] : null;
  } catch {
    return null;
  }
}

/**
 * Check if source file is newer than destination file
 */
function isNewer(sourcePath: string, destPath: string): boolean {
  if (!fs.existsSync(destPath)) {
    return true;
  }

  const sourceStat = fs.statSync(sourcePath);
  const destStat = fs.statSync(destPath);

  return sourceStat.mtime > destStat.mtime;
}

// ============================================================
// MAIN SYNC FUNCTION
// ============================================================

function syncWwozFiles(args: ParsedArgs): SyncResult {
  const result: SyncResult = {
    synced: [],
    skipped: [],
    errors: [],
  };

  // Ensure destination directory exists
  if (!args.dryRun) {
    fs.mkdirSync(CONFIG.destDir, { recursive: true });
  }

  // Find all source files
  const sourceFiles = findWwozFiles(CONFIG.sourceDir);

  if (args.verbose) {
    console.log(`Found ${sourceFiles.length} WWOZ files in ${CONFIG.sourceDir}`);
  }

  for (const sourcePath of sourceFiles) {
    const filename = path.basename(sourcePath);

    // Extract date from frontmatter
    const date = extractDateFromFrontmatter(sourcePath);

    if (!date) {
      result.errors.push({
        file: filename,
        error: 'Could not extract date from frontmatter',
      });
      continue;
    }

    const destFilename = `${date}.md`;
    const destPath = path.join(CONFIG.destDir, destFilename);

    // Check if sync is needed
    if (!args.force && !isNewer(sourcePath, destPath)) {
      result.skipped.push(destFilename);
      if (args.verbose) {
        console.log(`  Skipped (unchanged): ${destFilename}`);
      }
      continue;
    }

    // Copy file
    if (args.dryRun) {
      console.log(`  Would sync: ${filename} -> ${destFilename}`);
      result.synced.push(destFilename);
    } else {
      try {
        fs.copyFileSync(sourcePath, destPath);
        result.synced.push(destFilename);
        if (args.verbose) {
          console.log(`  Synced: ${filename} -> ${destFilename}`);
        }
      } catch (err) {
        result.errors.push({
          file: filename,
          error: err instanceof Error ? err.message : String(err),
        });
      }
    }
  }

  return result;
}

// ============================================================
// ENTRY POINT
// ============================================================

function main() {
  const args = parseArgs();

  console.log('WWOZ Archive Sync');
  console.log('=================');
  console.log(`Source: ${CONFIG.sourceDir}`);
  console.log(`Dest:   ${CONFIG.destDir}`);
  console.log(`Mode:   ${args.dryRun ? 'DRY RUN' : args.force ? 'FORCE' : 'INCREMENTAL'}`);
  console.log('');

  if (!fs.existsSync(CONFIG.sourceDir)) {
    console.error(`ERROR: Source directory not found: ${CONFIG.sourceDir}`);
    process.exit(1);
  }

  const result = syncWwozFiles(args);

  console.log('');
  console.log('Summary');
  console.log('-------');
  console.log(`Synced:  ${result.synced.length}`);
  console.log(`Skipped: ${result.skipped.length}`);
  console.log(`Errors:  ${result.errors.length}`);

  if (result.errors.length > 0) {
    console.log('');
    console.log('Errors:');
    for (const err of result.errors) {
      console.log(`  ${err.file}: ${err.error}`);
    }
  }

  // Exit with error if there were failures
  if (result.errors.length > 0) {
    process.exit(1);
  }
}

main();
