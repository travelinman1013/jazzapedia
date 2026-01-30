/**
 * Connections API Endpoint
 *
 * Returns musical connections (forward/reverse) and nameToSlug mapping for a specific artist.
 * Used by artist pages to load connection data on-demand from live database.
 *
 * @route GET /api/artists/[slug]/connections
 * @returns JSON with { connections: { forward, reverse }, nameToSlug }
 */
import type { APIRoute } from 'astro';
import { getDatabase } from '../../../../lib/db';
import { getArtistConnectionsFromDb } from '../../../../lib/connections-index';

export const GET: APIRoute = async ({ params, locals }) => {
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

  try {
    // Get database adapter (works with both D1 and SQLite)
    const db = await getDatabase(locals);

    if (!db) {
      return new Response(
        JSON.stringify({ error: 'Database not available' }),
        {
          status: 503,
          headers: { 'Content-Type': 'application/json' },
        }
      );
    }

    // Query connections from database
    const { forward, reverse, nameToSlug } = await getArtistConnectionsFromDb(db, slug);

    // Extract connections for this specific artist
    const connections = {
      forward,
      reverse,
    };

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
  } catch (error) {
    console.error('Failed to fetch connections from database:', error);
    return new Response(
      JSON.stringify({ error: 'Internal server error' }),
      {
        status: 500,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }
};
