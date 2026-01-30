/**
 * Connections API Endpoint
 *
 * Returns musical connections (forward/reverse) and nameToSlug mapping for a specific artist.
 * Used by artist pages to load connection data on-demand instead of bundling 2MB JSON.
 *
 * @route GET /api/artists/[slug]/connections
 * @returns JSON with { connections: { forward, reverse }, nameToSlug }
 */
import type { APIRoute } from 'astro';
import connectionsIndex from '../../../../data/connections-index.json';

export const GET: APIRoute = async ({ params }) => {
  const { slug } = params;

  if (!slug) {
    return new Response(
      JSON.stringify({ error: 'Slug parameter is required' }),
      {
        status: 400,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }

  // Extract connections for this specific artist
  const connections = {
    forward: (connectionsIndex as any).forward?.[slug] || {},
    reverse: (connectionsIndex as any).reverse?.[slug] || {},
  };

  // Include nameToSlug mapping for graph navigation
  const nameToSlug = (connectionsIndex as any).nameToSlug || {};

  // Return with aggressive caching (24 hours)
  // Connections change infrequently, so long cache TTL is appropriate
  return new Response(
    JSON.stringify({ connections, nameToSlug }),
    {
      status: 200,
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'public, max-age=86400, stale-while-revalidate=43200',
      },
    }
  );
};
