#!/usr/bin/env tsx
/**
 * Audio Similarity Computation
 *
 * Computes pairwise audio similarity between all artists with audio profiles.
 * Uses Euclidean distance across 6 normalized features (0-1 range).
 *
 * Outputs:
 *   - SQLite: artist_similarity table (top 10 per artist)
 *   - Static JSON: src/data/audio-similarity.json (top 5 per artist, for SSR)
 */

import Database from 'better-sqlite3';
import fs from 'node:fs';
import path from 'node:path';

const FEATURES = [
  'danceability_avg',
  'energy_avg',
  'valence_avg',
  'acousticness_avg',
  'instrumentalness_avg',
  'liveness_avg',
] as const;

const TOP_DB = 10;    // Store top 10 in database
const TOP_JSON = 5;   // Store top 5 in static JSON
const MAX_DISTANCE = Math.sqrt(FEATURES.length); // ~2.449

interface ArtistVector {
  slug: string;
  features: number[];
}

function euclideanDistance(a: number[], b: number[]): number {
  let sum = 0;
  for (let i = 0; i < a.length; i++) {
    sum += (a[i] - b[i]) ** 2;
  }
  return Math.sqrt(sum);
}

/** Normalize slug for dedup: strip "the-", "-and-*" / "and-*" suffixes, ensemble suffixes */
function normalizeSlugForDedup(slug: string): string {
  return slug
    .replace(/^the-/, '')
    .replace(/-?and-.*$/, '')
    .replace(/-(trio|quartet|quintet|sextet|orchestra|band)$/, '');
}

/** Levenshtein distance between two strings */
function levenshtein(a: string, b: string): number {
  const m = a.length, n = b.length;
  const dp: number[][] = Array.from({ length: m + 1 }, () => Array(n + 1).fill(0));
  for (let i = 0; i <= m; i++) dp[i][0] = i;
  for (let j = 0; j <= n; j++) dp[0][j] = j;
  for (let i = 1; i <= m; i++) {
    for (let j = 1; j <= n; j++) {
      dp[i][j] = a[i - 1] === b[j - 1]
        ? dp[i - 1][j - 1]
        : 1 + Math.min(dp[i - 1][j], dp[i][j - 1], dp[i - 1][j - 1]);
    }
  }
  return dp[m][n];
}

/** Check if two slugs likely refer to the same artist */
function slugsAreSimilar(a: string, b: string): boolean {
  const na = normalizeSlugForDedup(a);
  const nb = normalizeSlugForDedup(b);
  if (na === nb) return true;
  // Only use Levenshtein for slugs of similar length (avoid false positives)
  if (Math.abs(na.length - nb.length) > 2) return false;
  return levenshtein(na, nb) <= 2;
}

async function computeSimilarity() {
  const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');

  if (!fs.existsSync(dbPath)) {
    console.warn(`[similarity] Database not found: ${dbPath} — writing empty index`);
    const outputPath = path.join(process.cwd(), 'src/data/audio-similarity.json');
    fs.writeFileSync(outputPath, '{}');
    return;
  }

  const db = new Database(dbPath, { readonly: false });
  console.log(`[similarity] Connected to ${dbPath}`);

  // Ensure table exists
  const migrationPath = path.join(process.cwd(), 'migrations/0009_artist_similarity.sql');
  if (fs.existsSync(migrationPath)) {
    const migration = fs.readFileSync(migrationPath, 'utf-8');
    db.exec(migration);
  }

  // Load artists with audio profiles
  const rows = db.prepare(`
    SELECT slug, audio_profile FROM artists
    WHERE audio_profile IS NOT NULL AND audio_profile != '' AND audio_profile != '{}'
  `).all() as { slug: string; audio_profile: string }[];

  // Parse and extract feature vectors
  const vectors: ArtistVector[] = [];
  for (const row of rows) {
    try {
      const profile = JSON.parse(row.audio_profile);
      const features = FEATURES.map(f => {
        const v = Number(profile[f]) || 0;
        return Math.max(0, Math.min(1, v));
      });
      // Skip artists with all-zero features
      if (features.some(f => f > 0.01)) {
        vectors.push({ slug: row.slug, features });
      }
    } catch {
      // Skip malformed JSON
    }
  }

  console.log(`[similarity] Computing similarity for ${vectors.length} artists (${rows.length} total with profiles)...`);

  if (vectors.length === 0) {
    console.log('[similarity] No artists with valid audio profiles. Skipping.');
    db.close();
    return;
  }

  // Clear old data
  db.prepare('DELETE FROM artist_similarity').run();

  const insert = db.prepare(`
    INSERT INTO artist_similarity (artist_slug, similar_slug, similarity_score, computed_at)
    VALUES (?, ?, ?, datetime('now'))
  `);

  const insertBatch = db.transaction((pairs: { artist: string; similar: string; score: number }[]) => {
    for (const p of pairs) {
      insert.run(p.artist, p.similar, p.score);
    }
  });

  const staticIndex: Record<string, { slug: string; score: number }[]> = {};
  let totalPairs = 0;
  const startTime = Date.now();

  // Process in chunks to avoid memory issues with very large datasets
  for (let i = 0; i < vectors.length; i++) {
    const distances: { slug: string; score: number }[] = [];

    for (let j = 0; j < vectors.length; j++) {
      if (i === j) continue;
      const dist = euclideanDistance(vectors[i].features, vectors[j].features);
      const similarity = 1 - (dist / MAX_DISTANCE);
      distances.push({ slug: vectors[j].slug, score: similarity });
    }

    // Sort by similarity descending
    distances.sort((a, b) => b.score - a.score);

    // Deduplicate: keep only the highest-scored variant of similar-named artists
    // Use early exit - only scan until we have enough results
    const seen: string[] = [];
    const deduped: { slug: string; score: number }[] = [];
    for (const d of distances) {
      if (deduped.length >= TOP_DB) break;
      if (seen.some(s => slugsAreSimilar(s, d.slug))) continue;
      seen.push(d.slug);
      deduped.push(d);
    }

    // Insert top N into database
    const topN = deduped;
    insertBatch(topN.map(d => ({
      artist: vectors[i].slug,
      similar: d.slug,
      score: Math.round(d.score * 10000) / 10000,
    })));
    totalPairs += topN.length;

    // Store top 5 in static index (deduped already has at most TOP_DB entries)
    staticIndex[vectors[i].slug] = deduped.slice(0, TOP_JSON).map(d => ({
      slug: d.slug,
      score: Math.round(d.score * 1000) / 1000,
    }));

    // Progress update every 100 artists
    if ((i + 1) % 100 === 0 || i === 0) {
      const elapsed = (Date.now() - startTime) / 1000;
      const rate = (i + 1) / elapsed;
      const remaining = Math.round((vectors.length - i - 1) / rate);
      console.log(`[similarity] Processed ${i + 1}/${vectors.length} artists (${elapsed.toFixed(1)}s elapsed, ~${remaining}s remaining)`);
    }
  }

  console.log(`[similarity] Inserted ${totalPairs} similarity pairs into database`);

  // Write static JSON
  const outputPath = path.join(process.cwd(), 'src/data/audio-similarity.json');
  fs.writeFileSync(outputPath, JSON.stringify(staticIndex));
  console.log(`[similarity] Wrote ${Object.keys(staticIndex).length} entries to ${outputPath} (${(fs.statSync(outputPath).size / 1024).toFixed(0)}KB)`);

  db.close();
}

computeSimilarity().catch(err => {
  console.error('[similarity] Fatal error:', err);
  process.exit(1);
});
