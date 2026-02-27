/**
 * Search API Endpoint
 *
 * GET /api/search?q=miles&type=all&genre=jazz&limit=10&offset=0
 *
 * Returns JSON search results across artists and WWOZ tracks.
 */

import type { APIRoute } from 'astro';
import { getDatabase } from '../../../lib/db';
import { search } from '../../../lib/search';

export const GET: APIRoute = async ({ url, locals }) => {
  const q = url.searchParams.get('q') || '';
  const trimmed = q.trim();

  if (trimmed.length < 2) {
    return new Response(
      JSON.stringify({ error: 'Query must be at least 2 characters' }),
      { status: 400, headers: { 'Content-Type': 'application/json' } }
    );
  }

  const type = (url.searchParams.get('type') || 'all') as 'artists' | 'tracks' | 'all';
  if (!['artists', 'tracks', 'all'].includes(type)) {
    return new Response(
      JSON.stringify({ error: 'Invalid type. Allowed: artists, tracks, all' }),
      { status: 400, headers: { 'Content-Type': 'application/json' } }
    );
  }

  const genre = url.searchParams.get('genre') || undefined;
  const instrument = url.searchParams.get('instrument') || undefined;
  const role = url.searchParams.get('role') || undefined;
  const artistType = url.searchParams.get('artist_type') || undefined;

  const limit = Math.min(Math.max(parseInt(url.searchParams.get('limit') || '20', 10) || 20, 1), 50);
  const offset = Math.max(parseInt(url.searchParams.get('offset') || '0', 10) || 0, 0);

  const db = await getDatabase(locals);
  if (!db) {
    return new Response(
      JSON.stringify({ error: 'Database not available' }),
      { status: 500, headers: { 'Content-Type': 'application/json' } }
    );
  }

  try {
    const results = await search(db, {
      query: trimmed,
      type,
      genre,
      instrument,
      role,
      artistType,
      limit,
      offset,
    });

    return new Response(JSON.stringify(results), {
      status: 200,
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'public, max-age=300, stale-while-revalidate=600',
      },
    });
  } catch (error) {
    console.error('[api/search] Error:', error);
    return new Response(
      JSON.stringify({ error: 'Search failed' }),
      { status: 500, headers: { 'Content-Type': 'application/json' } }
    );
  }
};
