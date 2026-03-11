#!/usr/bin/env tsx
/**
 * Graph Analytics Computation
 *
 * Computes centrality metrics for the artist relationship graph:
 * - Degree (total, in, out)
 * - Betweenness centrality (Brandes' algorithm)
 * - Local clustering coefficient
 *
 * Outputs to: artist_graph_stats table in SQLite
 */

import Database from 'better-sqlite3';
import fs from 'node:fs';
import path from 'node:path';

const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');

function main() {
  console.log('[graph-analytics] Connecting to SQLite:', dbPath);

  if (!fs.existsSync(dbPath)) {
    console.warn('[graph-analytics] Database not found, skipping:', dbPath);
    process.exit(0);
  }

  const db = new Database(dbPath);

  // Verify table exists
  const tableExists = db.prepare(
    "SELECT name FROM sqlite_master WHERE type='table' AND name='artist_graph_stats'"
  ).get();
  if (!tableExists) {
    console.error('[graph-analytics] ERROR: artist_graph_stats table not found. Run migration 0013 first.');
    process.exit(1);
  }

  // Load all edges
  const edges = db.prepare(
    'SELECT source_slug, target_slug FROM artist_relationships'
  ).all() as Array<{ source_slug: string; target_slug: string }>;

  console.log(`[graph-analytics] Loaded ${edges.length} edges`);

  // Build adjacency list (undirected for centrality)
  const adj = new Map<string, Set<string>>();
  const outDegree = new Map<string, number>();
  const inDegree = new Map<string, number>();

  for (const edge of edges) {
    if (!adj.has(edge.source_slug)) adj.set(edge.source_slug, new Set());
    if (!adj.has(edge.target_slug)) adj.set(edge.target_slug, new Set());
    adj.get(edge.source_slug)!.add(edge.target_slug);
    adj.get(edge.target_slug)!.add(edge.source_slug);

    outDegree.set(edge.source_slug, (outDegree.get(edge.source_slug) || 0) + 1);
    inDegree.set(edge.target_slug, (inDegree.get(edge.target_slug) || 0) + 1);
  }

  const nodes = Array.from(adj.keys());
  const n = nodes.length;
  console.log(`[graph-analytics] Graph has ${n} nodes`);

  // ---- Degree ----
  console.log('[graph-analytics] Computing degree...');
  const degree = new Map<string, number>();
  for (const node of nodes) {
    degree.set(node, adj.get(node)!.size);
  }

  // ---- Betweenness Centrality (Brandes' algorithm) ----
  console.log('[graph-analytics] Computing betweenness centrality (this may take 10-30 seconds)...');
  const betweenness = new Map<string, number>();
  for (const node of nodes) betweenness.set(node, 0);

  const startTime = Date.now();
  let processed = 0;

  for (const s of nodes) {
    // BFS from s
    const stack: string[] = [];
    const predecessors = new Map<string, string[]>();
    const sigma = new Map<string, number>(); // Number of shortest paths
    const dist = new Map<string, number>();
    const delta = new Map<string, number>();

    for (const v of nodes) {
      predecessors.set(v, []);
      sigma.set(v, 0);
      dist.set(v, -1);
      delta.set(v, 0);
    }

    sigma.set(s, 1);
    dist.set(s, 0);
    const queue: string[] = [s];

    while (queue.length > 0) {
      const v = queue.shift()!;
      stack.push(v);

      for (const w of adj.get(v)!) {
        // w found for first time?
        if (dist.get(w)! < 0) {
          queue.push(w);
          dist.set(w, dist.get(v)! + 1);
        }
        // Shortest path to w via v?
        if (dist.get(w) === dist.get(v)! + 1) {
          sigma.set(w, sigma.get(w)! + sigma.get(v)!);
          predecessors.get(w)!.push(v);
        }
      }
    }

    // Accumulation
    while (stack.length > 0) {
      const w = stack.pop()!;
      for (const v of predecessors.get(w)!) {
        const contribution = (sigma.get(v)! / sigma.get(w)!) * (1 + delta.get(w)!);
        delta.set(v, delta.get(v)! + contribution);
      }
      if (w !== s) {
        betweenness.set(w, betweenness.get(w)! + delta.get(w)!);
      }
    }

    processed++;
    if (processed % 500 === 0) {
      const elapsed = ((Date.now() - startTime) / 1000).toFixed(1);
      const pct = ((processed / n) * 100).toFixed(0);
      console.log(`[graph-analytics] ... ${pct}% (${processed}/${n} nodes, ${elapsed}s)`);
    }
  }

  // Normalize betweenness (divide by (n-1)(n-2) for undirected graph)
  const normFactor = n > 2 ? (n - 1) * (n - 2) : 1;
  for (const node of nodes) {
    // Brandes counts each pair twice for undirected
    betweenness.set(node, betweenness.get(node)! / (2 * normFactor));
  }

  const betweennessTime = ((Date.now() - startTime) / 1000).toFixed(1);
  console.log(`[graph-analytics] Betweenness centrality computed in ${betweennessTime}s`);

  // ---- Clustering Coefficient ----
  console.log('[graph-analytics] Computing clustering coefficients...');
  const clustering = new Map<string, number>();

  for (const node of nodes) {
    const neighbors = Array.from(adj.get(node)!);
    const k = neighbors.length;

    if (k < 2) {
      clustering.set(node, 0);
      continue;
    }

    // Count edges between neighbors
    let triangles = 0;
    for (let i = 0; i < neighbors.length; i++) {
      const ni = adj.get(neighbors[i])!;
      for (let j = i + 1; j < neighbors.length; j++) {
        if (ni.has(neighbors[j])) {
          triangles++;
        }
      }
    }

    // Clustering coefficient = 2 * triangles / (k * (k-1))
    clustering.set(node, (2 * triangles) / (k * (k - 1)));
  }

  // ---- Write to Database ----
  console.log('[graph-analytics] Writing results to database...');

  const insertStmt = db.prepare(`
    INSERT OR REPLACE INTO artist_graph_stats (slug, degree, in_degree, out_degree, betweenness, clustering, computed_at)
    VALUES (?, ?, ?, ?, ?, ?, datetime('now'))
  `);

  const insertAll = db.transaction(() => {
    for (const node of nodes) {
      insertStmt.run(
        node,
        degree.get(node)!,
        inDegree.get(node) || 0,
        outDegree.get(node) || 0,
        betweenness.get(node)!,
        clustering.get(node)!
      );
    }
  });

  insertAll();

  // Report
  const totalTime = ((Date.now() - startTime) / 1000).toFixed(1);
  console.log(`\n[graph-analytics] ✓ Computed stats for ${nodes.length} artists in ${totalTime}s`);

  // Top 10 most connected
  const topDegree = db.prepare(
    'SELECT slug, degree FROM artist_graph_stats ORDER BY degree DESC LIMIT 10'
  ).all() as Array<{ slug: string; degree: number }>;
  console.log('\n[graph-analytics] Top 10 most connected:');
  for (const row of topDegree) {
    console.log(`  ${row.slug}: ${row.degree} connections`);
  }

  // Top 10 bridge artists
  const topBetweenness = db.prepare(
    'SELECT slug, betweenness FROM artist_graph_stats ORDER BY betweenness DESC LIMIT 10'
  ).all() as Array<{ slug: string; betweenness: number }>;
  console.log('\n[graph-analytics] Top 10 bridge artists:');
  for (const row of topBetweenness) {
    console.log(`  ${row.slug}: ${row.betweenness.toFixed(6)}`);
  }

  db.close();
}

main();
