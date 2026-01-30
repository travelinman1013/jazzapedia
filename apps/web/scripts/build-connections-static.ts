#!/usr/bin/env tsx
/**
 * Build-Time Connections Index Generator
 *
 * Reads artist data from SQLite database and generates a static JSON file
 * containing all connection relationships. This eliminates the need for
 * runtime D1 queries which are failing in Cloudflare's SSR environment.
 *
 * Generated file: src/data/connections-index.json (gitignored)
 */

import Database from 'better-sqlite3';
import fs from 'node:fs';
import path from 'node:path';

interface MusicalConnections {
  collaborators?: string[];
  influenced?: string[];
  mentors?: string[];
}

interface ConnectionsIndex {
  forward: Record<string, {
    collaborators: string[];
    influenced: string[];
    mentors: string[];
  }>;
  reverse: Record<string, {
    collaboratedWith: string[];
    influencedBy: string[];
    mentoredBy: string[];
  }>;
  nameToSlug: Record<string, string>;
  generatedAt: string;
  artistCount: number;
}

async function buildConnectionsIndex() {
  // Database path - use environment variable or default to Docker location
  const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');

  console.log('[build-connections] Connecting to SQLite:', dbPath);

  if (!fs.existsSync(dbPath)) {
    console.warn('[build-connections] WARNING: Database file not found:', dbPath);
    console.warn('[build-connections] Skipping connections index generation (will use existing file if available)');

    // Check if existing connections file exists
    const outputPath = path.join(process.cwd(), 'src/data/connections-index.json');
    if (fs.existsSync(outputPath)) {
      console.log('[build-connections] ✓ Using existing connections-index.json');
      process.exit(0);
    } else {
      console.error('[build-connections] ERROR: No existing connections-index.json found');
      console.error('[build-connections] Run this script locally with database access before Docker build');
      process.exit(1);
    }
  }

  const db = new Database(dbPath, { readonly: true });

  console.log('[build-connections] Building connections index from SQLite...');

  // Get all artists with their connections
  const artists = db.prepare(`
    SELECT slug, title, musical_connections
    FROM artists
    WHERE musical_connections IS NOT NULL
    AND musical_connections != '{}'
  `).all() as Array<{ slug: string; title: string; musical_connections: string }>;

  console.log(`[build-connections] Found ${artists.length} artists with connections`);

  // Build name to slug mapping (all artists for lookup)
  const nameToSlug: Record<string, string> = {};
  const allArtists = db.prepare('SELECT slug, title FROM artists').all() as Array<{ slug: string; title: string }>;

  console.log(`[build-connections] Indexing ${allArtists.length} total artists for name resolution`);

  for (const artist of allArtists) {
    // Store both title and slug as keys
    nameToSlug[artist.title.toLowerCase()] = artist.slug;
    nameToSlug[artist.slug] = artist.slug;
  }

  // Build forward connections
  const forward: ConnectionsIndex['forward'] = {};

  for (const artist of artists) {
    const connections: MusicalConnections = JSON.parse(artist.musical_connections);

    forward[artist.slug] = {
      collaborators: resolveNames(connections.collaborators || [], nameToSlug),
      influenced: resolveNames(connections.influenced || [], nameToSlug),
      mentors: resolveNames(connections.mentors || [], nameToSlug),
    };
  }

  // Build reverse connections
  const reverse: ConnectionsIndex['reverse'] = {};

  for (const [sourceSlug, connections] of Object.entries(forward)) {
    // Process collaborators (bidirectional)
    for (const targetSlug of connections.collaborators) {
      if (!reverse[targetSlug]) {
        reverse[targetSlug] = { collaboratedWith: [], influencedBy: [], mentoredBy: [] };
      }
      if (!reverse[targetSlug].collaboratedWith.includes(sourceSlug)) {
        reverse[targetSlug].collaboratedWith.push(sourceSlug);
      }
    }

    // Process influenced
    for (const targetSlug of connections.influenced) {
      if (!reverse[targetSlug]) {
        reverse[targetSlug] = { collaboratedWith: [], influencedBy: [], mentoredBy: [] };
      }
      if (!reverse[targetSlug].influencedBy.includes(sourceSlug)) {
        reverse[targetSlug].influencedBy.push(sourceSlug);
      }
    }

    // Process mentors
    for (const targetSlug of connections.mentors) {
      if (!reverse[targetSlug]) {
        reverse[targetSlug] = { collaboratedWith: [], influencedBy: [], mentoredBy: [] };
      }
      if (!reverse[targetSlug].mentoredBy.includes(sourceSlug)) {
        reverse[targetSlug].mentoredBy.push(sourceSlug);
      }
    }
  }

  const index: ConnectionsIndex = {
    forward,
    reverse,
    nameToSlug,
    generatedAt: new Date().toISOString(),
    artistCount: artists.length,
  };

  // Write to src/data directory
  const outputPath = path.join(process.cwd(), 'src/data/connections-index.json');
  fs.mkdirSync(path.dirname(outputPath), { recursive: true });
  fs.writeFileSync(outputPath, JSON.stringify(index));

  const fileSizeKB = Math.round(fs.statSync(outputPath).size / 1024);
  console.log(`[build-connections] ✓ Wrote connections index: ${Object.keys(forward).length} artists, ${fileSizeKB}KB`);
  console.log(`[build-connections] Output: ${outputPath}`);

  db.close();
}

/**
 * Resolve artist names to slugs, filtering out non-existent artists
 */
function resolveNames(names: string[], nameToSlug: Record<string, string>): string[] {
  return names
    .map(name => {
      const normalized = name.toLowerCase().trim();
      return nameToSlug[normalized] || null;
    })
    .filter((slug): slug is string => slug !== null);
}

// Run the generator
buildConnectionsIndex().catch(err => {
  console.error('[build-connections] FATAL ERROR:', err);
  process.exit(1);
});
