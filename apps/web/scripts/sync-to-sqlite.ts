#!/usr/bin/env npx tsx
/**
 * Sync Markdown Files to SQLite Database
 *
 * This script reads artist markdown files from the Obsidian vault,
 * parses frontmatter and content, and batch-inserts into a SQLite database.
 * Used for Docker deployments with better-sqlite3.
 *
 * Usage:
 *   npx tsx scripts/sync-to-sqlite.ts                      # Sync to ./data/jazzapedia.db
 *   npx tsx scripts/sync-to-sqlite.ts --output /path/to/db # Custom output path
 *   npx tsx scripts/sync-to-sqlite.ts --dry-run            # Preview without changes
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
  batchSize: 100,
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

interface SyncStats {
  total: number;
  processed: number;
  errors: number;
  skipped: number;
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
    `${title}.jpg`,
    `${title}.jpeg`,
    `${title}.png`,
    `${title}.webp`,
    `${slug}.jpg`,
    `${slug}.jpeg`,
    `${slug}.png`,
    `${slug}.webp`,
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

    for (const file of files) {
      const fileBaseLower = file.toLowerCase().replace(/\.(jpg|jpeg|png|webp)$/i, '');
      const fileWithHyphens = fileBaseLower.replace(/_/g, '-');

      if (fileWithHyphens === titleWithHyphens || fileWithHyphens === slugLower) {
        return file;
      }
    }
  } catch {
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
// DATABASE SETUP
// ============================================================

function createTables(db: Database.Database): void {
  // Create artists table
  db.exec(`
    CREATE TABLE IF NOT EXISTS artists (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      slug TEXT UNIQUE NOT NULL,
      title TEXT NOT NULL,
      artist_type TEXT,
      birth_date TEXT,
      death_date TEXT,
      origin TEXT,
      birth_place TEXT,
      bio_html TEXT,
      bio_markdown TEXT,
      image_filename TEXT,
      genres TEXT DEFAULT '[]',
      instruments TEXT DEFAULT '[]',
      roles TEXT DEFAULT '[]',
      spotify_data TEXT DEFAULT '{}',
      audio_profile TEXT DEFAULT '{}',
      musical_connections TEXT DEFAULT '{}',
      external_urls TEXT DEFAULT '{}',
      social_links TEXT DEFAULT '{}',
      discography_summary TEXT DEFAULT '{}',
      research_sources TEXT DEFAULT '[]',
      career_span TEXT,
      is_active INTEGER DEFAULT 1,
      primary_role TEXT,
      content_hash TEXT,
      created_at TEXT,
      updated_at TEXT
    );
  `);

  // Create search index table
  db.exec(`
    CREATE TABLE IF NOT EXISTS search_index (
      id INTEGER PRIMARY KEY,
      slug TEXT UNIQUE NOT NULL,
      title TEXT NOT NULL,
      bio_text TEXT,
      genres_text TEXT,
      instruments_text TEXT
    );
  `);

  // Create FTS5 virtual table for search
  db.exec(`
    CREATE VIRTUAL TABLE IF NOT EXISTS search_fts USING fts5(
      title,
      bio_text,
      genres_text,
      instruments_text,
      content='search_index',
      content_rowid='id'
    );
  `);

  // Create genres table
  db.exec(`
    CREATE TABLE IF NOT EXISTS genres (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT UNIQUE NOT NULL,
      slug TEXT UNIQUE NOT NULL,
      artist_count INTEGER DEFAULT 0
    );
  `);

  // Create instruments table
  db.exec(`
    CREATE TABLE IF NOT EXISTS instruments (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT UNIQUE NOT NULL,
      slug TEXT UNIQUE NOT NULL,
      artist_count INTEGER DEFAULT 0
    );
  `);

  // Create roles table
  db.exec(`
    CREATE TABLE IF NOT EXISTS roles (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT UNIQUE NOT NULL,
      slug TEXT UNIQUE NOT NULL,
      category TEXT DEFAULT 'other',
      artist_count INTEGER DEFAULT 0
    );
  `);

  // Create indexes
  db.exec(`
    CREATE INDEX IF NOT EXISTS idx_artists_slug ON artists(slug);
    CREATE INDEX IF NOT EXISTS idx_artists_title ON artists(title);
    CREATE INDEX IF NOT EXISTS idx_genres_slug ON genres(slug);
    CREATE INDEX IF NOT EXISTS idx_instruments_slug ON instruments(slug);
    CREATE INDEX IF NOT EXISTS idx_roles_slug ON roles(slug);
  `);
}

// ============================================================
// SYNC FUNCTIONS
// ============================================================

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
    process.stdout.write(`  Inserted ${Math.min(i + CONFIG.batchSize, artists.length)}/${artists.length} artists\r`);
  }
  console.log();
}

function syncGenres(db: Database.Database, artists: ArtistData[]): void {
  const genreBySlug = new Map<string, { name: string; count: number }>();

  for (const artist of artists) {
    for (const genre of artist.genres) {
      if (genre && genre.trim()) {
        const slug = genre.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-+|-+$/g, '');
        if (!slug) continue;

        const existing = genreBySlug.get(slug);
        if (existing) {
          existing.count++;
        } else {
          genreBySlug.set(slug, { name: genre, count: 1 });
        }
      }
    }
  }

  db.exec('DELETE FROM genres');

  const insert = db.prepare('INSERT INTO genres (name, slug, artist_count) VALUES (@name, @slug, @count)');
  const insertMany = db.transaction(() => {
    for (const [slug, data] of genreBySlug) {
      insert.run({ name: data.name, slug, count: data.count });
    }
  });

  insertMany();
  console.log(`  Inserted ${genreBySlug.size} genres`);
}

function syncInstruments(db: Database.Database, artists: ArtistData[]): void {
  const instrumentBySlug = new Map<string, { name: string; count: number }>();

  for (const artist of artists) {
    for (const instrument of artist.instruments) {
      if (instrument && instrument.trim()) {
        const slug = instrument.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-+|-+$/g, '');
        if (!slug) continue;

        const existing = instrumentBySlug.get(slug);
        if (existing) {
          existing.count++;
        } else {
          instrumentBySlug.set(slug, { name: instrument, count: 1 });
        }
      }
    }
  }

  db.exec('DELETE FROM instruments');

  const insert = db.prepare('INSERT INTO instruments (name, slug, artist_count) VALUES (@name, @slug, @count)');
  const insertMany = db.transaction(() => {
    for (const [slug, data] of instrumentBySlug) {
      insert.run({ name: data.name, slug, count: data.count });
    }
  });

  insertMany();
  console.log(`  Inserted ${instrumentBySlug.size} instruments`);
}

function syncRoles(db: Database.Database, artists: ArtistData[]): void {
  const roleBySlug = new Map<string, { name: string; count: number }>();

  for (const artist of artists) {
    for (const role of artist.roles) {
      if (role && role.trim()) {
        const slug = role.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-+|-+$/g, '');
        if (!slug) continue;

        const existing = roleBySlug.get(slug);
        if (existing) {
          existing.count++;
        } else {
          roleBySlug.set(slug, { name: role, count: 1 });
        }
      }
    }
  }

  // Get existing categories to preserve them
  const existingCategories = new Map<string, string>();
  try {
    const rows = db.prepare('SELECT slug, category FROM roles').all() as Array<{ slug: string; category: string }>;
    for (const row of rows) {
      existingCategories.set(row.slug, row.category);
    }
  } catch {
    // Table might not exist yet
  }

  db.exec('DELETE FROM roles');

  const insert = db.prepare('INSERT INTO roles (name, slug, artist_count, category) VALUES (@name, @slug, @count, @category)');
  const insertMany = db.transaction(() => {
    for (const [slug, data] of roleBySlug) {
      const category = existingCategories.get(slug) || 'other';
      insert.run({ name: data.name, slug, count: data.count, category });
    }
  });

  insertMany();
  console.log(`  Inserted ${roleBySlug.size} roles`);
}

function rebuildFTS(db: Database.Database): void {
  db.exec("INSERT INTO search_fts(search_fts) VALUES ('rebuild')");
  console.log('  Rebuilt FTS index');
}

// ============================================================
// MAIN
// ============================================================

async function main(): Promise<void> {
  const args = process.argv.slice(2);
  const isDryRun = args.includes('--dry-run');
  const outputIndex = args.indexOf('--output');
  const outputPath = outputIndex !== -1 && args[outputIndex + 1]
    ? args[outputIndex + 1]
    : CONFIG.defaultOutputPath;

  console.log('='.repeat(60));
  console.log('Jazzapedia SQLite Sync');
  console.log('='.repeat(60));
  console.log(`Output: ${path.resolve(outputPath)}`);
  console.log(`Dry run: ${isDryRun ? 'YES' : 'NO'}`);
  console.log('');

  // Read all markdown files
  console.log(`Reading files from ${CONFIG.artistsDir}...`);

  const allFiles = fs.readdirSync(CONFIG.artistsDir);
  const files = allFiles.filter(f => f.endsWith('.md') && !f.startsWith('.'));

  console.log(`Found ${files.length} markdown files`);
  console.log('');

  // Parse all artists
  console.log('Parsing artist files...');
  const artists: ArtistData[] = [];
  const stats: SyncStats = { total: files.length, processed: 0, errors: 0, skipped: 0 };
  const errorFiles: string[] = [];

  for (const file of files) {
    const filePath = path.join(CONFIG.artistsDir, file);

    if (filePath.includes('.backup')) {
      stats.skipped++;
      continue;
    }

    const artist = parseArtistFile(filePath);

    if (artist) {
      artists.push(artist);
      stats.processed++;
    } else {
      stats.errors++;
      errorFiles.push(file);
    }

    if (stats.processed % 500 === 0 && stats.processed > 0) {
      console.log(`  Processed ${stats.processed}/${files.length}...`);
    }
  }

  console.log(`Parsed ${artists.length} artists (${stats.errors} errors, ${stats.skipped} skipped)`);

  if (errorFiles.length > 0 && errorFiles.length <= 10) {
    console.log('  Files with errors:', errorFiles.join(', '));
  }
  console.log('');

  // Count unique items
  const uniqueGenres = new Set(artists.flatMap(a => a.genres));
  const uniqueInstruments = new Set(artists.flatMap(a => a.instruments));
  const uniqueRoles = new Set(artists.flatMap(a => a.roles));

  console.log(`Found ${uniqueGenres.size} unique genres`);
  console.log(`Found ${uniqueInstruments.size} unique instruments`);
  console.log(`Found ${uniqueRoles.size} unique roles`);
  console.log('');

  if (isDryRun) {
    console.log('-'.repeat(60));
    console.log('DRY RUN - No changes applied to database');
    console.log('-'.repeat(60));
    console.log(`Would insert ${artists.length} artists`);
    console.log(`Would insert ${uniqueGenres.size} genres`);
    console.log(`Would insert ${uniqueInstruments.size} instruments`);
    console.log(`Would insert ${uniqueRoles.size} roles`);
    console.log(`Would rebuild FTS index`);
    return;
  }

  // Ensure output directory exists
  const outputDir = path.dirname(outputPath);
  fs.mkdirSync(outputDir, { recursive: true });

  // Open database
  console.log('Opening database...');
  const db = new Database(outputPath);

  try {
    // Create tables
    console.log('Creating/updating schema...');
    createTables(db);

    // Sync data
    console.log('');
    console.log('Syncing artists...');
    syncArtists(db, artists);

    console.log('Syncing genres...');
    syncGenres(db, artists);

    console.log('Syncing instruments...');
    syncInstruments(db, artists);

    console.log('Syncing roles...');
    syncRoles(db, artists);

    console.log('Rebuilding FTS index...');
    rebuildFTS(db);

    console.log('');
    console.log('='.repeat(60));
    console.log('Sync complete!');
    console.log('='.repeat(60));
    console.log(`  Database: ${path.resolve(outputPath)}`);
    console.log(`  Artists: ${artists.length}`);
    console.log(`  Genres: ${uniqueGenres.size}`);
    console.log(`  Instruments: ${uniqueInstruments.size}`);
    console.log(`  Roles: ${uniqueRoles.size}`);
    console.log('');
  } finally {
    db.close();
  }
}

main().catch((err) => {
  console.error('Unexpected error:', err);
  process.exit(1);
});
