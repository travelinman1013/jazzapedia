#!/usr/bin/env tsx
/**
 * Populate Artist Relationships Table
 *
 * Reads musical_connections JSON from every artist row, resolves display names
 * to slugs, and inserts normalized rows into artist_relationships.
 *
 * Idempotent: Uses INSERT OR IGNORE with composite PK.
 *
 * Usage:
 *   npx tsx scripts/populate-artist-relationships.ts          # Local SQLite
 *   npx tsx scripts/populate-artist-relationships.ts --remote  # Cloudflare D1
 */

import Database from 'better-sqlite3';
import fs from 'node:fs';
import path from 'node:path';

interface MusicalConnections {
  collaborators?: string[];
  influenced?: string[];
  mentors?: string[];
  members?: string[];
  associatedActs?: string[];
  formerMembers?: string[];
}

// Maps JSON field names to relationship_type values
const FIELD_MAPPING: Record<keyof MusicalConnections, string> = {
  collaborators: 'collaborator',
  influenced: 'influenced',
  mentors: 'mentor',
  members: 'member',
  associatedActs: 'associated',
  formerMembers: 'former_member',
};

async function populateRelationships() {
  const isRemote = process.argv.includes('--remote');

  if (isRemote) {
    console.log('[populate-relationships] D1 remote mode not yet implemented');
    console.log('[populate-relationships] Use: npx wrangler d1 execute jazzapedia --remote --file=migrations/0012_artist_relationships.sql');
    console.log('[populate-relationships] Then run the population via sync-incremental.ts --remote');
    process.exit(0);
  }

  const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');

  console.log('[populate-relationships] Connecting to SQLite:', dbPath);

  if (!fs.existsSync(dbPath)) {
    console.warn('[populate-relationships] Database not found, skipping:', dbPath);
    process.exit(0);
  }

  const db = new Database(dbPath);

  // Verify the table exists
  const tableExists = db.prepare(
    "SELECT name FROM sqlite_master WHERE type='table' AND name='artist_relationships'"
  ).get();

  if (!tableExists) {
    console.error('[populate-relationships] ERROR: artist_relationships table not found. Run migration 0012 first.');
    process.exit(1);
  }

  // Build name→slug mapping (all artists)
  const allArtists = db.prepare('SELECT slug, title FROM artists').all() as Array<{ slug: string; title: string }>;
  const nameToSlug = new Map<string, string>();
  const slugSet = new Set<string>();

  for (const artist of allArtists) {
    nameToSlug.set(artist.title.toLowerCase(), artist.slug);
    nameToSlug.set(artist.slug, artist.slug);
    slugSet.add(artist.slug);
  }

  console.log(`[populate-relationships] Indexed ${allArtists.length} artists for name resolution`);

  // Get all artists with connections
  const artists = db.prepare(`
    SELECT slug, title, musical_connections
    FROM artists
    WHERE musical_connections IS NOT NULL
    AND musical_connections != '{}'
  `).all() as Array<{ slug: string; title: string; musical_connections: string }>;

  console.log(`[populate-relationships] Found ${artists.length} artists with connections`);

  // Prepare insert statement
  const insertStmt = db.prepare(`
    INSERT OR IGNORE INTO artist_relationships (source_slug, target_slug, relationship_type)
    VALUES (?, ?, ?)
  `);

  let totalInserted = 0;
  let totalSkipped = 0;
  const unresolvedNames: string[] = [];

  // Use a transaction for performance
  const insertAll = db.transaction(() => {
    for (const artist of artists) {
      let connections: MusicalConnections;
      try {
        connections = JSON.parse(artist.musical_connections);
      } catch {
        console.warn(`[populate-relationships] Invalid JSON for ${artist.slug}, skipping`);
        continue;
      }

      for (const [field, relType] of Object.entries(FIELD_MAPPING)) {
        const names = connections[field as keyof MusicalConnections] || [];
        for (const name of names) {
          const normalized = name.toLowerCase().trim();
          const targetSlug = nameToSlug.get(normalized);

          if (!targetSlug) {
            unresolvedNames.push(`${artist.slug} → ${name} (${relType})`);
            totalSkipped++;
            continue;
          }

          // Don't create self-referencing relationships
          if (targetSlug === artist.slug) {
            continue;
          }

          const result = insertStmt.run(artist.slug, targetSlug, relType);
          if (result.changes > 0) {
            totalInserted++;
          }
        }
      }
    }
  });

  insertAll();

  // Report results
  const totalRows = (db.prepare('SELECT COUNT(*) as count FROM artist_relationships').get() as { count: number }).count;

  console.log(`[populate-relationships] ✓ Inserted ${totalInserted} new relationships`);
  console.log(`[populate-relationships] ✓ Total relationships in table: ${totalRows}`);
  console.log(`[populate-relationships] ✗ Skipped ${totalSkipped} unresolvable names`);

  if (unresolvedNames.length > 0 && unresolvedNames.length <= 20) {
    console.log('[populate-relationships] Unresolved names:');
    for (const name of unresolvedNames) {
      console.log(`  - ${name}`);
    }
  } else if (unresolvedNames.length > 20) {
    console.log(`[populate-relationships] First 20 unresolved names:`);
    for (const name of unresolvedNames.slice(0, 20)) {
      console.log(`  - ${name}`);
    }
    console.log(`  ... and ${unresolvedNames.length - 20} more`);
  }

  // Quick sanity check
  const topConnected = db.prepare(`
    SELECT source_slug, COUNT(*) as cnt
    FROM artist_relationships
    GROUP BY source_slug
    ORDER BY cnt DESC
    LIMIT 5
  `).all() as Array<{ source_slug: string; cnt: number }>;

  console.log('\n[populate-relationships] Top 5 most connected (forward):');
  for (const row of topConnected) {
    console.log(`  ${row.source_slug}: ${row.cnt} connections`);
  }

  db.close();
}

populateRelationships().catch(err => {
  console.error('[populate-relationships] FATAL ERROR:', err);
  process.exit(1);
});
