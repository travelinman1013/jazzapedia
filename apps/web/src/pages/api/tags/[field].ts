/**
 * Tag Autocomplete Endpoint
 *
 * GET /api/tags/[field]
 * Returns: { suggestions: string[] }
 *
 * Supported fields: genres, instruments
 */

import type { APIRoute } from 'astro';
import { getDatabase } from '../../../lib/db';

const ALLOWED_FIELDS = ['genres', 'instruments'] as const;
type TagField = (typeof ALLOWED_FIELDS)[number];

/**
 * Get distinct values for a tag field (for autocomplete)
 */
async function getDistinctTagValues(
  db: any,
  field: TagField
): Promise<string[]> {
  // SQLite json_each to extract array values
  const { results } = await db
    .prepare(
      `SELECT DISTINCT je.value as tag
       FROM artists, json_each(${field}) as je
       WHERE je.value IS NOT NULL AND je.value != ''
       ORDER BY tag`
    )
    .all();

  return results.map((r: { tag: string }) => r.tag);
}

// Simple in-memory cache for tag suggestions
const cache = new Map<string, { data: string[]; expiresAt: number }>();
const CACHE_TTL_MS = 5 * 60 * 1000; // 5 minutes

export const GET: APIRoute = async ({ params, locals }) => {
  const { field } = params;

  if (!field || !ALLOWED_FIELDS.includes(field as TagField)) {
    return new Response(
      JSON.stringify({
        error: `Invalid field. Allowed: ${ALLOWED_FIELDS.join(', ')}`,
      }),
      {
        status: 400,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }

  // Check cache
  const cacheKey = field;
  const cached = cache.get(cacheKey);
  if (cached && cached.expiresAt > Date.now()) {
    return new Response(JSON.stringify({ suggestions: cached.data }), {
      status: 200,
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'public, max-age=300, stale-while-revalidate=600',
      },
    });
  }

  // Get database
  const db = await getDatabase(locals);
  if (!db) {
    return new Response(JSON.stringify({ error: 'Database not available' }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }

  try {
    const suggestions = await getDistinctTagValues(db, field as TagField);

    // Update cache
    cache.set(cacheKey, {
      data: suggestions,
      expiresAt: Date.now() + CACHE_TTL_MS,
    });

    return new Response(JSON.stringify({ suggestions }), {
      status: 200,
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'public, max-age=300, stale-while-revalidate=600',
      },
    });
  } catch (error) {
    console.error('[tags] Error fetching suggestions:', error);
    return new Response(JSON.stringify({ error: 'Failed to fetch suggestions' }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' },
    });
  }
};
