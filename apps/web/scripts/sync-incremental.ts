#!/usr/bin/env npx tsx
/**
 * Incremental Sync: Only sync new/modified artists to D1
 *
 * This script compares file content hashes against D1 content_hash column
 * and only processes artists that have changed. Works reliably in CI
 * where file modification times are not preserved.
 *
 * Usage:
 *   npx tsx scripts/sync-incremental.ts --local          # Sync to local D1
 *   npx tsx scripts/sync-incremental.ts --remote         # Sync to production D1
 *   npx tsx scripts/sync-incremental.ts --local --dry-run  # Preview changes
 *
 * Options:
 *   --local     Sync to local D1 database (default)
 *   --remote    Sync to production D1 database
 *   --dry-run   Show what would be synced without making changes
 *   --force     Force sync all artists (ignore hashes)
 */

import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import { execSync } from 'node:child_process';
import matter from 'gray-matter';
import { marked } from 'marked';

// ============================================================
// CONFIGURATION
// ============================================================

const CONFIG = {
  artistsDir: process.env.ARTISTS_DIR || './content/artists',
  portraitsDir: process.env.PORTRAITS_DIR || './portraits',
  databaseName: 'jazzapedia',
  batchSize: 5, // Reduced from 50 to avoid D1 SQLITE_TOOBIG errors on artists with large content
  outputDir: './sync-output',
};

// ============================================================
// TYPES
// ============================================================

interface ArtistData {
  slug: string;
  title: string;
  artist_type: string | null;
  birth_date: string | null;
  death_date: string | null;
  origin: string | null;
  birth_place: string | null;
  bio_html: string;
  bio_markdown: string;
  bio_text: string;
  image_filename: string | null;
  genres: string[];
  instruments: string[];
  roles: string[];
  spotify_data: object | null;
  audio_profile: object | null;
  external_urls: object | null;
  musical_connections: object | null;
  research_sources: string[];
  content_hash: string;
}

// ============================================================
// HELPER FUNCTIONS
// ============================================================

function generateSlug(filename: string): string {
  return filename
    .replace(/\.md$/, '')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/-+/g, '-')
    .replace(/^-+|-+$/g, '');
}

function computeFileHash(filePath: string): string {
  const content = fs.readFileSync(filePath, 'utf-8');
  return crypto.createHash('md5').update(content).digest('hex');
}

function stripHtml(html: string): string {
  return html
    .replace(/<[^>]*>/g, ' ')
    .replace(/&nbsp;/g, ' ')
    .replace(/&amp;/g, '&')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
    .replace(/\s+/g, ' ')
    .trim();
}

function findPortraitFile(slug: string, title: string): string | null {
  const possibleNames = [
    `${title}.jpg`, `${title}.jpeg`, `${title}.png`, `${title}.webp`,
    `${slug}.jpg`, `${slug}.jpeg`, `${slug}.png`, `${slug}.webp`,
  ];

  for (const name of possibleNames) {
    const filePath = path.join(CONFIG.portraitsDir, name);
    if (fs.existsSync(filePath)) {
      return name;
    }
  }

  try {
    const files = fs.readdirSync(CONFIG.portraitsDir);
    const titleLower = title.toLowerCase();
    const slugLower = slug.toLowerCase();

    for (const file of files) {
      const fileBaseLower = file.toLowerCase().replace(/\.(jpg|jpeg|png|webp)$/i, '');
      if (fileBaseLower === titleLower || fileBaseLower === slugLower) {
        return file;
      }
    }

    const titleWithHyphens = titleLower.replace(/_/g, '-');
    const titleWithUnderscores = titleLower.replace(/-/g, '_');

    for (const file of files) {
      const fileBaseLower = file.toLowerCase().replace(/\.(jpg|jpeg|png|webp)$/i, '');
      const fileWithHyphens = fileBaseLower.replace(/_/g, '-');
      const fileWithUnderscores = fileBaseLower.replace(/-/g, '_');

      if (fileWithHyphens === titleWithHyphens ||
          fileWithUnderscores === titleWithUnderscores ||
          fileWithHyphens === slugLower ||
          fileWithUnderscores === slug.replace(/-/g, '_')) {
        return file;
      }
    }
  } catch (e) {
    // Directory might not exist
  }

  return null;
}

function parseArtistFile(filePath: string): ArtistData | null {
  try {
    const content = fs.readFileSync(filePath, 'utf-8');
    const contentHash = crypto.createHash('md5').update(content).digest('hex');
    const { data: frontmatter, content: markdown } = matter(content);

    const filename = path.basename(filePath);
    const slug = generateSlug(filename);
    const title = frontmatter.title || filename.replace(/\.md$/, '').replace(/_/g, ' ');

    let bioHtml = marked(markdown, { async: false }) as string;
    bioHtml = bioHtml.replace(/<h2>Quick Info<\/h2>\s*<ul>[\s\S]*?<\/ul>/gi, '');

    const bioText = stripHtml(bioHtml);
    const imageFilename = findPortraitFile(slug, title);

    const artistType = frontmatter.artist_type || null;
    const isBand = artistType === 'band' || artistType === 'group';
    let origin: string | null = null;
    let birthPlace: string | null = null;

    if (isBand) {
      origin = frontmatter.origin || null;
    } else {
      birthPlace = frontmatter.birth_place || null;
    }

    let researchSources: string[] = [];
    if (Array.isArray(frontmatter.research_sources)) {
      researchSources = frontmatter.research_sources.filter(
        (s: any) => typeof s === 'string' && (s.startsWith('http://') || s.startsWith('https://'))
      );
    }

    return {
      slug,
      title,
      artist_type: artistType,
      birth_date: frontmatter.birth_date || null,
      death_date: frontmatter.death_date || null,
      origin,
      birth_place: birthPlace,
      bio_html: bioHtml,
      bio_markdown: markdown,
      bio_text: bioText.substring(0, 10000),
      image_filename: imageFilename,
      genres: Array.isArray(frontmatter.genres) ? frontmatter.genres : [],
      instruments: Array.isArray(frontmatter.instruments) ? frontmatter.instruments : [],
      roles: Array.isArray(frontmatter.roles) ? frontmatter.roles : [],
      spotify_data: frontmatter.spotify_data || null,
      audio_profile: frontmatter.audio_profile || null,
      external_urls: frontmatter.external_urls || null,
      musical_connections: frontmatter.musical_connections || null,
      research_sources: researchSources,
      content_hash: contentHash,
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
  if (obj === null || obj === undefined) return "'{}'";
  const jsonStr = JSON.stringify(obj);
  return escapeSql(jsonStr);
}

function generateArtistSQL(artist: ArtistData): string {
  // Insert artist first, then use subquery to get the id for search_index
  // This avoids FOREIGN KEY constraint issues
  return `INSERT OR REPLACE INTO artists (
  slug, title, artist_type, birth_date, death_date,
  origin, birth_place, research_sources,
  bio_html, bio_markdown, image_filename,
  genres, instruments, roles, spotify_data, audio_profile,
  external_urls, musical_connections, content_hash, updated_at
) VALUES (
  ${escapeSql(artist.slug)},
  ${escapeSql(artist.title)},
  ${escapeSql(artist.artist_type)},
  ${escapeSql(artist.birth_date)},
  ${escapeSql(artist.death_date)},
  ${escapeSql(artist.origin)},
  ${escapeSql(artist.birth_place)},
  ${escapeJson(artist.research_sources)},
  ${escapeSql(artist.bio_html)},
  ${escapeSql(artist.bio_markdown)},
  ${escapeSql(artist.image_filename)},
  ${escapeJson(artist.genres)},
  ${escapeJson(artist.instruments)},
  ${escapeJson(artist.roles)},
  ${escapeJson(artist.spotify_data)},
  ${escapeJson(artist.audio_profile)},
  ${escapeJson(artist.external_urls)},
  ${escapeJson(artist.musical_connections)},
  ${escapeSql(artist.content_hash)},
  datetime('now')
);

INSERT OR REPLACE INTO search_index (id, slug, title, bio_text, genres_text, instruments_text)
SELECT
  id,
  ${escapeSql(artist.slug)},
  ${escapeSql(artist.title)},
  ${escapeSql(artist.bio_text)},
  ${escapeSql(artist.genres.join(', '))},
  ${escapeSql(artist.instruments.join(', '))}
FROM artists WHERE slug = ${escapeSql(artist.slug)};`;
}

// ============================================================
// D1 QUERY FUNCTIONS
// ============================================================

function queryD1(target: string, command: string): any {
  try {
    const result = execSync(
      `npx wrangler d1 execute ${CONFIG.databaseName} ${target} --command="${command.replace(/"/g, '\\"')}" --json`,
      { stdio: 'pipe', encoding: 'utf-8' }
    );
    const parsed = JSON.parse(result);
    return parsed[0]?.results || [];
  } catch (error: any) {
    console.error('D1 query failed:', error.message);
    return [];
  }
}

function getExistingHashes(target: string): Map<string, string | null> {
  console.log('Fetching existing content hashes from D1...');

  const results = queryD1(target, 'SELECT slug, content_hash FROM artists');
  const hashMap = new Map<string, string | null>();

  for (const row of results) {
    hashMap.set(row.slug, row.content_hash || null);
  }

  console.log(`Found ${hashMap.size} existing artists in D1`);
  return hashMap;
}

// ============================================================
// MAIN FUNCTION
// ============================================================

async function main() {
  const args = process.argv.slice(2);
  const isRemote = args.includes('--remote');
  const isDryRun = args.includes('--dry-run');
  const forceAll = args.includes('--force');
  const target = isRemote ? '--remote' : '--local';

  console.log('='.repeat(60));
  console.log('Jazzapedia Incremental Sync (Content Hash)');
  console.log('='.repeat(60));
  console.log(`Target: ${isRemote ? 'PRODUCTION (remote)' : 'LOCAL (development)'}`);
  console.log(`Dry run: ${isDryRun ? 'YES' : 'NO'}`);
  console.log(`Force all: ${forceAll ? 'YES' : 'NO'}`);
  console.log('');

  // Get existing content hashes from D1
  const existingHashes = forceAll ? new Map<string, string | null>() : getExistingHashes(target);

  // Scan vault files and compute hashes
  console.log(`\nScanning ${CONFIG.artistsDir}...`);
  const allFiles = fs.readdirSync(CONFIG.artistsDir);
  const mdFiles = allFiles.filter(f => f.endsWith('.md') && !f.startsWith('.'));
  console.log(`Found ${mdFiles.length} markdown files`);

  // Compare file hashes with D1 hashes
  console.log('\nComparing content hashes...');
  const filesToSync: { file: string; reason: 'new' | 'modified' }[] = [];

  for (const file of mdFiles) {
    const slug = generateSlug(file);
    const filePath = path.join(CONFIG.artistsDir, file);
    const fileHash = computeFileHash(filePath);

    const d1Hash = existingHashes.get(slug);

    if (d1Hash === undefined) {
      // Slug not in D1 - new artist
      filesToSync.push({ file, reason: 'new' });
    } else if (d1Hash !== fileHash) {
      // Hash differs - content changed
      filesToSync.push({ file, reason: 'modified' });
    }
    // else: hashes match, skip
  }

  const newCount = filesToSync.filter(f => f.reason === 'new').length;
  const modifiedCount = filesToSync.filter(f => f.reason === 'modified').length;

  console.log(`\nChanges detected:`);
  console.log(`  New artists: ${newCount}`);
  console.log(`  Modified artists: ${modifiedCount}`);
  console.log(`  Total to sync: ${filesToSync.length}`);

  if (filesToSync.length === 0) {
    console.log('\nNo changes to sync. Database is up to date!');
    return;
  }

  // Show what will be synced
  if (filesToSync.length <= 20) {
    console.log('\nFiles to sync:');
    for (const { file, reason } of filesToSync) {
      console.log(`  [${reason}] ${file}`);
    }
  } else {
    console.log('\nFirst 20 files to sync:');
    for (const { file, reason } of filesToSync.slice(0, 20)) {
      console.log(`  [${reason}] ${file}`);
    }
    console.log(`  ... and ${filesToSync.length - 20} more`);
  }

  if (isDryRun) {
    console.log('\n' + '-'.repeat(60));
    console.log('DRY RUN - No changes applied');
    console.log('-'.repeat(60));
    return;
  }

  // Parse and sync artists
  console.log('\nParsing and syncing artists...');
  fs.mkdirSync(CONFIG.outputDir, { recursive: true });

  let synced = 0;
  let errors = 0;
  const batchStatements: string[] = [];

  for (const { file } of filesToSync) {
    const filePath = path.join(CONFIG.artistsDir, file);
    const artist = parseArtistFile(filePath);

    if (!artist) {
      errors++;
      continue;
    }

    batchStatements.push(generateArtistSQL(artist));
    synced++;

    // Execute in batches
    if (batchStatements.length >= CONFIG.batchSize) {
      const batchSQL = batchStatements.join('\n\n');
      const batchFile = path.join(CONFIG.outputDir, 'incremental_batch.sql');
      fs.writeFileSync(batchFile, batchSQL);

      try {
        execSync(
          `npx wrangler d1 execute ${CONFIG.databaseName} ${target} --file="${path.resolve(batchFile)}"`,
          { stdio: 'pipe' }
        );
        process.stdout.write(`\r  Synced ${synced}/${filesToSync.length} artists...`);
      } catch (err: any) {
        console.error(`\nBatch failed: ${err.message}`);
        errors += batchStatements.length;
      }

      batchStatements.length = 0;
    }
  }

  // Execute remaining batch
  if (batchStatements.length > 0) {
    const batchSQL = batchStatements.join('\n\n');
    const batchFile = path.join(CONFIG.outputDir, 'incremental_batch.sql');
    fs.writeFileSync(batchFile, batchSQL);

    try {
      execSync(
        `npx wrangler d1 execute ${CONFIG.databaseName} ${target} --file="${path.resolve(batchFile)}"`,
        { stdio: 'pipe' }
      );
    } catch (err: any) {
      console.error(`\nFinal batch failed: ${err.message}`);
      errors += batchStatements.length;
    }
  }

  // Rebuild FTS index
  console.log('\n\nRebuilding FTS index...');
  try {
    execSync(
      `npx wrangler d1 execute ${CONFIG.databaseName} ${target} --command="INSERT INTO search_fts(search_fts) VALUES ('rebuild');"`,
      { stdio: 'pipe' }
    );
    console.log('  Done');
  } catch (err: any) {
    console.error('  FTS rebuild failed:', err.message);
  }

  console.log('\n' + '='.repeat(60));
  console.log('Incremental Sync Complete!');
  console.log('='.repeat(60));
  console.log(`  New artists: ${newCount}`);
  console.log(`  Modified artists: ${modifiedCount}`);
  console.log(`  Successfully synced: ${synced}`);
  console.log(`  Errors: ${errors}`);
}

main().catch((err) => {
  console.error('Unexpected error:', err);
  process.exit(1);
});
