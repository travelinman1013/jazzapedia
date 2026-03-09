/**
 * Path Finding API
 *
 * GET /api/graph/path?from=slug1&to=slug2&maxDepth=6
 *
 * Finds the shortest path between two artists using BFS over the
 * artist_relationships table. Graph is loaded into memory (~200KB)
 * for fast traversal.
 */

import type { APIRoute } from 'astro';
import { getDatabase } from '../../../lib/db';

interface PathNode {
  slug: string;
  title: string;
  image_filename: string | null;
}

interface PathEdge {
  from: string;
  to: string;
  type: string;
}

interface PathResult {
  path: PathNode[] | null;
  edges: PathEdge[];
  depth: number;
  message?: string;
}

export const GET: APIRoute = async ({ url, locals }) => {
  const fromSlug = url.searchParams.get('from');
  const toSlug = url.searchParams.get('to');
  const maxDepth = Math.min(parseInt(url.searchParams.get('maxDepth') || '6'), 8);

  if (!fromSlug || !toSlug) {
    return new Response(
      JSON.stringify({ error: 'Both "from" and "to" parameters are required' }),
      { status: 400, headers: { 'Content-Type': 'application/json' } }
    );
  }

  if (fromSlug === toSlug) {
    return new Response(
      JSON.stringify({ error: 'Cannot find path from an artist to themselves' }),
      { status: 400, headers: { 'Content-Type': 'application/json' } }
    );
  }

  const db = await getDatabase(locals);
  if (!db) {
    return new Response(
      JSON.stringify({ error: 'Database unavailable' }),
      { status: 500, headers: { 'Content-Type': 'application/json' } }
    );
  }

  try {
    // Load all edges into memory for BFS
    const { results: edges } = await db
      .prepare('SELECT source_slug, target_slug, relationship_type FROM artist_relationships')
      .all<{ source_slug: string; target_slug: string; relationship_type: string }>();

    // Build undirected adjacency list
    const adj = new Map<string, Array<{ neighbor: string; type: string; direction: 'forward' | 'reverse' }>>();

    for (const edge of edges) {
      if (!adj.has(edge.source_slug)) adj.set(edge.source_slug, []);
      if (!adj.has(edge.target_slug)) adj.set(edge.target_slug, []);

      adj.get(edge.source_slug)!.push({
        neighbor: edge.target_slug,
        type: edge.relationship_type,
        direction: 'forward',
      });
      adj.get(edge.target_slug)!.push({
        neighbor: edge.source_slug,
        type: edge.relationship_type,
        direction: 'reverse',
      });
    }

    // Check if both artists exist in the graph
    if (!adj.has(fromSlug)) {
      return jsonResponse({ path: null, edges: [], depth: 0, message: `"${fromSlug}" has no connections in the graph` });
    }
    if (!adj.has(toSlug)) {
      return jsonResponse({ path: null, edges: [], depth: 0, message: `"${toSlug}" has no connections in the graph` });
    }

    // BFS shortest path
    const visited = new Set<string>([fromSlug]);
    const parent = new Map<string, { slug: string; edgeType: string; direction: 'forward' | 'reverse' }>();
    const queue: Array<{ slug: string; depth: number }> = [{ slug: fromSlug, depth: 0 }];

    let found = false;

    while (queue.length > 0) {
      const { slug, depth } = queue.shift()!;

      if (depth >= maxDepth) continue;

      const neighbors = adj.get(slug) || [];
      for (const { neighbor, type, direction } of neighbors) {
        if (visited.has(neighbor)) continue;
        visited.add(neighbor);
        parent.set(neighbor, { slug, edgeType: type, direction });

        if (neighbor === toSlug) {
          found = true;
          break;
        }

        queue.push({ slug: neighbor, depth: depth + 1 });
      }

      if (found) break;
    }

    if (!found) {
      return jsonResponse({
        path: null,
        edges: [],
        depth: 0,
        message: `No connection found within ${maxDepth} degrees`,
      });
    }

    // Reconstruct path
    const pathSlugs: string[] = [toSlug];
    const pathEdges: PathEdge[] = [];
    let current = toSlug;

    while (current !== fromSlug) {
      const prev = parent.get(current)!;
      pathSlugs.unshift(prev.slug);

      // Determine edge direction for display
      if (prev.direction === 'forward') {
        pathEdges.unshift({ from: prev.slug, to: current, type: prev.edgeType });
      } else {
        pathEdges.unshift({ from: current, to: prev.slug, type: prev.edgeType });
      }

      current = prev.slug;
    }

    // Fetch artist details for the path
    const placeholders = pathSlugs.map(() => '?').join(',');
    const { results: artistRows } = await db
      .prepare(`SELECT slug, title, image_filename FROM artists WHERE slug IN (${placeholders})`)
      .bind(...pathSlugs)
      .all<{ slug: string; title: string; image_filename: string | null }>();

    const artistMap = new Map(artistRows.map(a => [a.slug, a]));
    const pathNodes: PathNode[] = pathSlugs.map(slug => {
      const artist = artistMap.get(slug);
      return {
        slug,
        title: artist?.title || slug,
        image_filename: artist?.image_filename || null,
      };
    });

    const result: PathResult = {
      path: pathNodes,
      edges: pathEdges,
      depth: pathSlugs.length - 1,
    };

    return jsonResponse(result);
  } catch (error) {
    console.error('[path-api] Error:', error);
    return new Response(
      JSON.stringify({ error: 'Internal server error' }),
      { status: 500, headers: { 'Content-Type': 'application/json' } }
    );
  }
};

function jsonResponse(data: PathResult): Response {
  return new Response(JSON.stringify(data), {
    headers: {
      'Content-Type': 'application/json',
      'Cache-Control': 'public, max-age=300, stale-while-revalidate=600',
    },
  });
}
