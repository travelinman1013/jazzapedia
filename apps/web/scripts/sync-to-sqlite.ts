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
import Database from 'better-sqlite3';

import {
  type ArtistData,
  parseAllArtists,
} from './lib/sync-utils.js';

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

  // Read and parse all artists using shared utility
  console.log(`Reading files from ${CONFIG.artistsDir}...`);

  const { artists, stats, errorFiles } = parseAllArtists(
    CONFIG.artistsDir,
    CONFIG.portraitsDir,
    (processed, total) => console.log(`  Processed ${processed}/${total}...`)
  );

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
