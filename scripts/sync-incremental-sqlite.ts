#!/usr/bin/env npx tsx
/**
 * Incremental Sync: Only sync new/modified artists to SQLite
 *
 * This script compares file content hashes against SQLite content_hash column
 * and only processes artists that have changed. Much faster than full sync
 * for daily updates where only a few artists are added/modified.
 *
 * Usage:
 *   npx tsx scripts/sync-incremental-sqlite.ts                # Sync to ./data/jazzapedia.db
 *   npx tsx scripts/sync-incremental-sqlite.ts --dry-run      # Preview changes
 *   npx tsx scripts/sync-incremental-sqlite.ts --force        # Force sync all artists
 *   npx tsx scripts/sync-incremental-sqlite.ts --output /path # Custom output path
 *
 * Environment Variables:
 *   ARTISTS_DIR   - Path to artist markdown files
 *   PORTRAITS_DIR - Path to portrait images
 */

import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import matter from 'gray-matter';
import { marked } from 'marked';
import Database from 'better-sqlite3';

// ============================================================
// CONFIGURATION
// ============================================================

const CONFIG = {
  artistsDir: process.env.ARTISTS_DIR || '/Users/maxwell/LETSGO/MaxVault/01_Projects/PersonalArtistWiki/Artists',
  portraitsDir: process.env.PORTRAITS_DIR || '/Users/maxwell/LETSGO/MaxVault/03_Resources/source_material/ArtistPortraits',
  defaultOutputPath: './data/jazzapedia.db',
  batchSize: 50,
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
// DATABASE FUNCTIONS
// ============================================================

function getExistingHashes(db: Database.Database): Map<string, string | null> {
  console.log('Fetching existing content hashes from SQLite...');

  try {
    const rows = db.prepare('SELECT slug, content_hash FROM artists').all() as Array<{ slug: string; content_hash: string | null }>;
    const hashMap = new Map<string, string | null>();

    for (const row of rows) {
      hashMap.set(row.slug, row.content_hash || null);
    }

    console.log(`Found ${hashMap.size} existing artists in SQLite`);
    return hashMap;
  } catch (error) {
    // Table might not exist yet
    console.log('No existing artists found (table may not exist)');
    return new Map();
  }
}

function syncArtists(db: Database.Database, artists: ArtistData[]): void {
  const insertArtist = db.prepare(`
    INSERT OR REPLACE INTO artists (
      slug, title, artist_type, birth_date, death_date,
      origin, birth_place, bio_html, bio_markdown, image_filename,
      genres, instruments, roles, spotify_data, audio_profile,
      external_urls, musical_connections, research_sources,
      content_hash, updated_at
    ) VALUES (
      @slug, @title, @artist_type, @birth_date, @death_date,
      @origin, @birth_place, @bio_html, @bio_markdown, @image_filename,
      @genres, @instruments, @roles, @spotify_data, @audio_profile,
      @external_urls, @musical_connections, @research_sources,
      @content_hash, datetime('now')
    )
  `);

  const insertSearch = db.prepare(`
    INSERT OR REPLACE INTO search_index (id, slug, title, bio_text, genres_text, instruments_text)
    VALUES (
      (SELECT id FROM artists WHERE slug = @slug),
      @slug, @title, @bio_text, @genres_text, @instruments_text
    )
  `);

  const insertMany = db.transaction((artists: ArtistData[]) => {
    for (const artist of artists) {
      insertArtist.run({
        slug: artist.slug,
        title: artist.title,
        artist_type: artist.artist_type,
        birth_date: artist.birth_date,
        death_date: artist.death_date,
        origin: artist.origin,
        birth_place: artist.birth_place,
        bio_html: artist.bio_html,
        bio_markdown: artist.bio_markdown,
        image_filename: artist.image_filename,
        genres: JSON.stringify(artist.genres),
        instruments: JSON.stringify(artist.instruments),
        roles: JSON.stringify(artist.roles),
        spotify_data: JSON.stringify(artist.spotify_data || {}),
        audio_profile: JSON.stringify(artist.audio_profile || {}),
        external_urls: JSON.stringify(artist.external_urls || {}),
        musical_connections: JSON.stringify(artist.musical_connections || {}),
        research_sources: JSON.stringify(artist.research_sources),
        content_hash: artist.content_hash,
      });

      insertSearch.run({
        slug: artist.slug,
        title: artist.title,
        bio_text: artist.bio_text,
        genres_text: artist.genres.join(', '),
        instruments_text: artist.instruments.join(', '),
      });
    }
  });

  // Process in batches
  for (let i = 0; i < artists.length; i += CONFIG.batchSize) {
    const batch = artists.slice(i, i + CONFIG.batchSize);
    insertMany(batch);
    process.stdout.write(`\r  Synced ${Math.min(i + CONFIG.batchSize, artists.length)}/${artists.length} artists...`);
  }
  console.log();
}

function updateLookupTables(db: Database.Database): void {
  // Update genres counts
  db.exec(`
    DELETE FROM genres;
    INSERT INTO genres (name, slug, artist_count)
    SELECT
      json_each.value as name,
      LOWER(REPLACE(REPLACE(TRIM(json_each.value), ' ', '-'), '''', '')) as slug,
      COUNT(*) as artist_count
    FROM artists, json_each(artists.genres)
    WHERE json_each.value IS NOT NULL AND json_each.value != ''
    GROUP BY LOWER(TRIM(json_each.value))
    ORDER BY artist_count DESC;
  `);

  // Update instruments counts
  db.exec(`
    DELETE FROM instruments;
    INSERT INTO instruments (name, slug, artist_count)
    SELECT
      json_each.value as name,
      LOWER(REPLACE(REPLACE(TRIM(json_each.value), ' ', '-'), '''', '')) as slug,
      COUNT(*) as artist_count
    FROM artists, json_each(artists.instruments)
    WHERE json_each.value IS NOT NULL AND json_each.value != ''
    GROUP BY LOWER(TRIM(json_each.value))
    ORDER BY artist_count DESC;
  `);

  // Update roles counts
  db.exec(`
    DELETE FROM roles;
    INSERT INTO roles (name, slug, artist_count)
    SELECT
      json_each.value as name,
      LOWER(REPLACE(REPLACE(TRIM(json_each.value), ' ', '-'), '''', '')) as slug,
      COUNT(*) as artist_count
    FROM artists, json_each(artists.roles)
    WHERE json_each.value IS NOT NULL AND json_each.value != ''
    GROUP BY LOWER(TRIM(json_each.value))
    ORDER BY artist_count DESC;
  `);
}

function rebuildFTS(db: Database.Database): void {
  db.exec("INSERT INTO search_fts(search_fts) VALUES ('rebuild')");
}

// ============================================================
// MAIN FUNCTION
// ============================================================

async function main() {
  const args = process.argv.slice(2);
  const isDryRun = args.includes('--dry-run');
  const forceAll = args.includes('--force');
  const outputIndex = args.indexOf('--output');
  const outputPath = outputIndex !== -1 && args[outputIndex + 1]
    ? args[outputIndex + 1]
    : CONFIG.defaultOutputPath;

  console.log('='.repeat(60));
  console.log('Jazzapedia Incremental SQLite Sync');
  console.log('='.repeat(60));
  console.log(`Output: ${path.resolve(outputPath)}`);
  console.log(`Dry run: ${isDryRun ? 'YES' : 'NO'}`);
  console.log(`Force all: ${forceAll ? 'YES' : 'NO'}`);
  console.log('');

  // Ensure output directory exists
  const outputDir = path.dirname(outputPath);
  fs.mkdirSync(outputDir, { recursive: true });

  // Open database (or create if doesn't exist)
  const dbExists = fs.existsSync(outputPath);
  const db = new Database(outputPath);

  // If database doesn't exist, we need to create tables first
  if (!dbExists) {
    console.log('Database does not exist. Creating schema...');
    console.log('Hint: Run full sync first with: npm run sync:sqlite');
    db.close();
    process.exit(1);
  }

  // Get existing content hashes from SQLite
  const existingHashes = forceAll ? new Map<string, string | null>() : getExistingHashes(db);

  // Scan vault files and compute hashes
  console.log(`\nScanning ${CONFIG.artistsDir}...`);
  const allFiles = fs.readdirSync(CONFIG.artistsDir);
  const mdFiles = allFiles.filter(f => f.endsWith('.md') && !f.startsWith('.') && !f.includes('.backup'));
  console.log(`Found ${mdFiles.length} markdown files`);

  // Compare file hashes with SQLite hashes
  console.log('\nComparing content hashes...');
  const filesToSync: { file: string; reason: 'new' | 'modified' }[] = [];

  for (const file of mdFiles) {
    const slug = generateSlug(file);
    const filePath = path.join(CONFIG.artistsDir, file);
    const fileHash = computeFileHash(filePath);

    const dbHash = existingHashes.get(slug);

    if (dbHash === undefined) {
      // Slug not in database - new artist
      filesToSync.push({ file, reason: 'new' });
    } else if (dbHash !== fileHash) {
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
    db.close();
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
    db.close();
    return;
  }

  // Parse and sync artists
  console.log('\nParsing and syncing artists...');
  const artists: ArtistData[] = [];
  let errors = 0;

  for (const { file } of filesToSync) {
    const filePath = path.join(CONFIG.artistsDir, file);
    const artist = parseArtistFile(filePath);

    if (artist) {
      artists.push(artist);
    } else {
      errors++;
    }
  }

  if (artists.length > 0) {
    syncArtists(db, artists);

    // Update lookup tables (genres, instruments, roles)
    console.log('\nUpdating lookup tables...');
    updateLookupTables(db);

    // Rebuild FTS index
    console.log('Rebuilding FTS index...');
    rebuildFTS(db);
    console.log('  Done');
  }

  db.close();

  console.log('\n' + '='.repeat(60));
  console.log('Incremental Sync Complete!');
  console.log('='.repeat(60));
  console.log(`  New artists: ${newCount}`);
  console.log(`  Modified artists: ${modifiedCount}`);
  console.log(`  Successfully synced: ${artists.length}`);
  console.log(`  Errors: ${errors}`);

  // Return exit code 0 if changes were made, for use in shell scripts
  process.exit(0);
}

main().catch((err) => {
  console.error('Unexpected error:', err);
  process.exit(1);
});
