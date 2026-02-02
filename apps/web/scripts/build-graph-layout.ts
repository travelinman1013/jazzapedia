#!/usr/bin/env tsx
/**
 * Build-Time Graph Layout Generator
 *
 * Pre-computes node positions for the ecosystem graph visualization using
 * d3-force simulation. This runs at build time (~30-60 seconds) so the
 * Three.js visualization can render instantly at runtime.
 *
 * Generated file: src/data/graph-layout.json (gitignored)
 */

import Database from 'better-sqlite3';
import * as d3 from 'd3-force';
import fs from 'node:fs';
import path from 'node:path';

interface MusicalConnections {
  collaborators?: string[];
  influenced?: string[];
  mentors?: string[];
}

interface GraphNode {
  slug: string;
  name: string;
  x: number;
  y: number;
  connections: number;
}

interface GraphEdge {
  source: string;
  target: string;
  type: 'collaborator' | 'influenced' | 'mentor';
}

interface GraphLayout {
  nodes: GraphNode[];
  edges: GraphEdge[];
  metadata: {
    generatedAt: string;
    nodeCount: number;
    edgeCount: number;
    bounds: {
      minX: number;
      maxX: number;
      minY: number;
      maxY: number;
    };
  };
}

// D3 simulation node (mutable during simulation)
interface SimNode {
  slug: string;
  name: string;
  x?: number;
  y?: number;
  vx?: number;
  vy?: number;
  connections: number;
}

// D3 simulation link
interface SimLink {
  source: string | SimNode;
  target: string | SimNode;
  type: 'collaborator' | 'influenced' | 'mentor';
}

async function buildGraphLayout() {
  const startTime = Date.now();

  // Database path - use environment variable or default to Docker location
  const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');

  console.log('[build-graph] Connecting to SQLite:', dbPath);

  if (!fs.existsSync(dbPath)) {
    console.warn('[build-graph] WARNING: Database file not found:', dbPath);
    console.warn('[build-graph] Skipping graph layout generation (will use existing file if available)');

    const outputPath = path.join(process.cwd(), 'src/data/graph-layout.json');
    if (fs.existsSync(outputPath)) {
      console.log('[build-graph] Using existing graph-layout.json');
      process.exit(0);
    } else {
      console.error('[build-graph] ERROR: No existing graph-layout.json found');
      console.error('[build-graph] Run this script locally with database access before Docker build');
      process.exit(1);
    }
  }

  const db = new Database(dbPath, { readonly: true });

  console.log('[build-graph] Building graph layout from SQLite...');

  // Get all artists
  const allArtists = db.prepare('SELECT slug, title FROM artists').all() as Array<{
    slug: string;
    title: string;
  }>;

  console.log(`[build-graph] Found ${allArtists.length} total artists`);

  // Build name to slug mapping for resolving connections
  const nameToSlug: Record<string, string> = {};
  for (const artist of allArtists) {
    nameToSlug[artist.title.toLowerCase()] = artist.slug;
    nameToSlug[artist.slug] = artist.slug;
  }

  // Get artists with musical connections
  const artistsWithConnections = db.prepare(`
    SELECT slug, title, musical_connections
    FROM artists
    WHERE musical_connections IS NOT NULL
    AND musical_connections != '{}'
  `).all() as Array<{ slug: string; title: string; musical_connections: string }>;

  console.log(`[build-graph] Found ${artistsWithConnections.length} artists with connections`);

  // Build edges from connections
  const edges: SimLink[] = [];
  const edgeSet = new Set<string>(); // Dedupe edges

  for (const artist of artistsWithConnections) {
    const connections: MusicalConnections = JSON.parse(artist.musical_connections);

    // Process collaborators
    for (const name of connections.collaborators || []) {
      const targetSlug = nameToSlug[name.toLowerCase()];
      if (targetSlug && targetSlug !== artist.slug) {
        const edgeKey = [artist.slug, targetSlug].sort().join('::');
        if (!edgeSet.has(edgeKey)) {
          edgeSet.add(edgeKey);
          edges.push({
            source: artist.slug,
            target: targetSlug,
            type: 'collaborator'
          });
        }
      }
    }

    // Process influenced
    for (const name of connections.influenced || []) {
      const targetSlug = nameToSlug[name.toLowerCase()];
      if (targetSlug && targetSlug !== artist.slug) {
        const edgeKey = `${artist.slug}->inf->${targetSlug}`;
        if (!edgeSet.has(edgeKey)) {
          edgeSet.add(edgeKey);
          edges.push({
            source: artist.slug,
            target: targetSlug,
            type: 'influenced'
          });
        }
      }
    }

    // Process mentors
    for (const name of connections.mentors || []) {
      const targetSlug = nameToSlug[name.toLowerCase()];
      if (targetSlug && targetSlug !== artist.slug) {
        const edgeKey = `${targetSlug}->mentor->${artist.slug}`;
        if (!edgeSet.has(edgeKey)) {
          edgeSet.add(edgeKey);
          edges.push({
            source: targetSlug,
            target: artist.slug,
            type: 'mentor'
          });
        }
      }
    }
  }

  console.log(`[build-graph] Built ${edges.length} edges`);

  // Find all nodes that are connected (either as source or target)
  const connectedSlugs = new Set<string>();
  for (const edge of edges) {
    connectedSlugs.add(edge.source as string);
    connectedSlugs.add(edge.target as string);
  }

  console.log(`[build-graph] ${connectedSlugs.size} artists are connected`);

  // Count connections per node
  const connectionCounts: Record<string, number> = {};
  for (const edge of edges) {
    const source = edge.source as string;
    const target = edge.target as string;
    connectionCounts[source] = (connectionCounts[source] || 0) + 1;
    connectionCounts[target] = (connectionCounts[target] || 0) + 1;
  }

  // Build nodes array (only connected artists)
  const slugToTitle: Record<string, string> = {};
  for (const artist of allArtists) {
    slugToTitle[artist.slug] = artist.title;
  }

  const nodes: SimNode[] = Array.from(connectedSlugs).map(slug => ({
    slug,
    name: slugToTitle[slug] || slug,
    connections: connectionCounts[slug] || 0
  }));

  console.log(`[build-graph] Created ${nodes.length} nodes for simulation`);

  // Run d3-force simulation
  console.log('[build-graph] Running force simulation...');

  const simulation = d3.forceSimulation<SimNode>(nodes)
    .force('link', d3.forceLink<SimNode, SimLink>(edges)
      .id(d => d.slug)
      .distance(50)
      .strength(0.3))
    .force('charge', d3.forceManyBody<SimNode>()
      .strength(-30)
      .distanceMax(300))
    .force('center', d3.forceCenter(0, 0))
    .force('collision', d3.forceCollide<SimNode>()
      .radius(d => 5 + Math.sqrt(d.connections) * 2));

  // Run simulation until stable
  const iterations = 300;
  console.log(`[build-graph] Running ${iterations} iterations...`);

  for (let i = 0; i < iterations; i++) {
    simulation.tick();
    if (i % 50 === 0) {
      console.log(`[build-graph] Iteration ${i}/${iterations}, alpha: ${simulation.alpha().toFixed(4)}`);
    }
  }

  simulation.stop();

  // Calculate bounds
  let minX = Infinity, maxX = -Infinity;
  let minY = Infinity, maxY = -Infinity;

  for (const node of nodes) {
    if (node.x !== undefined && node.y !== undefined) {
      minX = Math.min(minX, node.x);
      maxX = Math.max(maxX, node.x);
      minY = Math.min(minY, node.y);
      maxY = Math.max(maxY, node.y);
    }
  }

  // Add padding to bounds
  const padding = 50;
  minX -= padding;
  maxX += padding;
  minY -= padding;
  maxY += padding;

  console.log(`[build-graph] Bounds: X[${minX.toFixed(0)}, ${maxX.toFixed(0)}], Y[${minY.toFixed(0)}, ${maxY.toFixed(0)}]`);

  // Build output
  const outputNodes: GraphNode[] = nodes.map(n => ({
    slug: n.slug,
    name: n.name,
    x: Math.round((n.x || 0) * 100) / 100,
    y: Math.round((n.y || 0) * 100) / 100,
    connections: n.connections
  }));

  // Convert edges to use slugs (d3 may have replaced them with node references)
  const outputEdges: GraphEdge[] = edges.map(e => ({
    source: typeof e.source === 'string' ? e.source : e.source.slug,
    target: typeof e.target === 'string' ? e.target : e.target.slug,
    type: e.type
  }));

  const output: GraphLayout = {
    nodes: outputNodes,
    edges: outputEdges,
    metadata: {
      generatedAt: new Date().toISOString(),
      nodeCount: outputNodes.length,
      edgeCount: outputEdges.length,
      bounds: {
        minX: Math.round(minX),
        maxX: Math.round(maxX),
        minY: Math.round(minY),
        maxY: Math.round(maxY)
      }
    }
  };

  // Write to src/data directory
  const outputPath = path.join(process.cwd(), 'src/data/graph-layout.json');
  fs.mkdirSync(path.dirname(outputPath), { recursive: true });
  fs.writeFileSync(outputPath, JSON.stringify(output));

  const fileSizeKB = Math.round(fs.statSync(outputPath).size / 1024);
  const elapsed = ((Date.now() - startTime) / 1000).toFixed(1);

  console.log(`[build-graph] Graph layout complete in ${elapsed}s`);
  console.log(`[build-graph] Nodes: ${output.metadata.nodeCount}`);
  console.log(`[build-graph] Edges: ${output.metadata.edgeCount}`);
  console.log(`[build-graph] File size: ${fileSizeKB}KB`);
  console.log(`[build-graph] Output: ${outputPath}`);

  db.close();
}

// Run the generator
buildGraphLayout().catch(err => {
  console.error('[build-graph] FATAL ERROR:', err);
  process.exit(1);
});
