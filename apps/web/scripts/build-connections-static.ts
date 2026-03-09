#!/usr/bin/env tsx
/**
 * Build-Time Connections Index Generator
 *
 * Reads from the normalized artist_relationships table and generates a static
 * JSON file for use by artist pages and wiki-link resolution.
 *
 * Generated file: src/data/connections-index.json (gitignored)
 */

import Database from 'better-sqlite3';
import fs from 'node:fs';
import path from 'node:path';

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
  const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');

  console.log('[build-connections] Connecting to SQLite:', dbPath);

  if (!fs.existsSync(dbPath)) {
    console.warn('[build-connections] WARNING: Database file not found:', dbPath);
    console.warn('[build-connections] Skipping connections index generation (will use existing file if available)');

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

  // Check if artist_relationships table exists
  const tableExists = db.prepare(
    "SELECT name FROM sqlite_master WHERE type='table' AND name='artist_relationships'"
  ).get();

  if (!tableExists) {
    console.warn('[build-connections] WARNING: artist_relationships table not found.');
    console.warn('[build-connections] Falling back to musical_connections JSON parsing.');
    db.close();
    // Fall back to the old approach if table doesn't exist yet
    await buildFromJson(dbPath);
    return;
  }

  console.log('[build-connections] Building connections index from artist_relationships table...');

  // Build name→slug mapping (all artists)
  const nameToSlug: Record<string, string> = {};
  const allArtists = db.prepare('SELECT slug, title FROM artists').all() as Array<{ slug: string; title: string }>;

  for (const artist of allArtists) {
    nameToSlug[artist.title.toLowerCase()] = artist.slug;
    nameToSlug[artist.slug] = artist.slug;
  }

  console.log(`[build-connections] Indexing ${allArtists.length} total artists for name resolution`);

  // Read all edges from the normalized table
  const edges = db.prepare(
    'SELECT source_slug, target_slug, relationship_type FROM artist_relationships'
  ).all() as Array<{ source_slug: string; target_slug: string; relationship_type: string }>;

  console.log(`[build-connections] Found ${edges.length} relationship edges`);

  // Build forward connections
  const forward: ConnectionsIndex['forward'] = {};
  const reverse: ConnectionsIndex['reverse'] = {};

  for (const edge of edges) {
    // Forward
    if (!forward[edge.source_slug]) {
      forward[edge.source_slug] = { collaborators: [], influenced: [], mentors: [] };
    }

    const fwd = forward[edge.source_slug];
    switch (edge.relationship_type) {
      case 'collaborator':
        fwd.collaborators.push(edge.target_slug);
        break;
      case 'influenced':
        fwd.influenced.push(edge.target_slug);
        break;
      case 'mentor':
        fwd.mentors.push(edge.target_slug);
        break;
    }

    // Reverse
    if (!reverse[edge.target_slug]) {
      reverse[edge.target_slug] = { collaboratedWith: [], influencedBy: [], mentoredBy: [] };
    }

    const rev = reverse[edge.target_slug];
    switch (edge.relationship_type) {
      case 'collaborator':
        if (!rev.collaboratedWith.includes(edge.source_slug)) {
          rev.collaboratedWith.push(edge.source_slug);
        }
        break;
      case 'influenced':
        if (!rev.influencedBy.includes(edge.source_slug)) {
          rev.influencedBy.push(edge.source_slug);
        }
        break;
      case 'mentor':
        if (!rev.mentoredBy.includes(edge.source_slug)) {
          rev.mentoredBy.push(edge.source_slug);
        }
        break;
    }
  }

  const index: ConnectionsIndex = {
    forward,
    reverse,
    nameToSlug,
    generatedAt: new Date().toISOString(),
    artistCount: Object.keys(forward).length,
  };

  // Write output
  const outputPath = path.join(process.cwd(), 'src/data/connections-index.json');
  fs.mkdirSync(path.dirname(outputPath), { recursive: true });
  fs.writeFileSync(outputPath, JSON.stringify(index));

  const fileSizeKB = Math.round(fs.statSync(outputPath).size / 1024);
  console.log(`[build-connections] ✓ Wrote connections index: ${Object.keys(forward).length} artists, ${fileSizeKB}KB`);
  console.log(`[build-connections] Output: ${outputPath}`);

  db.close();
}

/**
 * Fallback: Build from musical_connections JSON (pre-migration compatibility)
 */
async function buildFromJson(dbPath: string) {
  const db = new Database(dbPath, { readonly: true });

  console.log('[build-connections] Building connections index from JSON (legacy mode)...');

  const artists = db.prepare(`
    SELECT slug, title, musical_connections
    FROM artists
    WHERE musical_connections IS NOT NULL
    AND musical_connections != '{}'
  `).all() as Array<{ slug: string; title: string; musical_connections: string }>;

  const nameToSlug: Record<string, string> = {};
  const allArtists = db.prepare('SELECT slug, title FROM artists').all() as Array<{ slug: string; title: string }>;

  for (const artist of allArtists) {
    nameToSlug[artist.title.toLowerCase()] = artist.slug;
    nameToSlug[artist.slug] = artist.slug;
  }

  const forward: ConnectionsIndex['forward'] = {};

  for (const artist of artists) {
    const connections = JSON.parse(artist.musical_connections);
    forward[artist.slug] = {
      collaborators: resolveNames(connections.collaborators || [], nameToSlug),
      influenced: resolveNames(connections.influenced || [], nameToSlug),
      mentors: resolveNames(connections.mentors || [], nameToSlug),
    };
  }

  const reverse: ConnectionsIndex['reverse'] = {};

  for (const [sourceSlug, connections] of Object.entries(forward)) {
    for (const targetSlug of connections.collaborators) {
      if (!reverse[targetSlug]) reverse[targetSlug] = { collaboratedWith: [], influencedBy: [], mentoredBy: [] };
      if (!reverse[targetSlug].collaboratedWith.includes(sourceSlug)) reverse[targetSlug].collaboratedWith.push(sourceSlug);
    }
    for (const targetSlug of connections.influenced) {
      if (!reverse[targetSlug]) reverse[targetSlug] = { collaboratedWith: [], influencedBy: [], mentoredBy: [] };
      if (!reverse[targetSlug].influencedBy.includes(sourceSlug)) reverse[targetSlug].influencedBy.push(sourceSlug);
    }
    for (const targetSlug of connections.mentors) {
      if (!reverse[targetSlug]) reverse[targetSlug] = { collaboratedWith: [], influencedBy: [], mentoredBy: [] };
      if (!reverse[targetSlug].mentoredBy.includes(sourceSlug)) reverse[targetSlug].mentoredBy.push(sourceSlug);
    }
  }

  const index: ConnectionsIndex = {
    forward,
    reverse,
    nameToSlug,
    generatedAt: new Date().toISOString(),
    artistCount: artists.length,
  };

  const outputPath = path.join(process.cwd(), 'src/data/connections-index.json');
  fs.mkdirSync(path.dirname(outputPath), { recursive: true });
  fs.writeFileSync(outputPath, JSON.stringify(index));

  const fileSizeKB = Math.round(fs.statSync(outputPath).size / 1024);
  console.log(`[build-connections] ✓ Wrote connections index (legacy): ${artists.length} artists, ${fileSizeKB}KB`);

  db.close();
}

function resolveNames(names: string[], nameToSlug: Record<string, string>): string[] {
  return names
    .map(name => nameToSlug[name.toLowerCase().trim()] || null)
    .filter((slug): slug is string => slug !== null);
}

buildConnectionsIndex().catch(err => {
  console.error('[build-connections] FATAL ERROR:', err);
  process.exit(1);
});
