/**
 * Search Suggestions / Autocomplete Endpoint
 *
 * GET /api/search/suggest?q=mil
 *
 * Returns lightweight autocomplete suggestions for artists, genres, and instruments.
 * Optimized for speed (<50ms target).
 */

import type { APIRoute } from 'astro';
import { getDatabase } from '../../../lib/db';

interface Suggestion {
  text: string;
  slug: string;
  type: 'artist' | 'genre' | 'instrument';
  image_filename?: string | null;
  artist_type?: string | null;
}

export const GET: APIRoute = async ({ url, locals }) => {
  const q = url.searchParams.get('q') || '';
  const trimmed = q.trim();

  if (trimmed.length < 1) {
    return new Response(
      JSON.stringify({ suggestions: [] }),
      { status: 200, headers: { 'Content-Type': 'application/json' } }
    );
  }

  const db = await getDatabase(locals);
  if (!db) {
    return new Response(
      JSON.stringify({ error: 'Database not available' }),
      { status: 500, headers: { 'Content-Type': 'application/json' } }
    );
  }

  try {
    const suggestions: Suggestion[] = [];
    const prefixParam = `${trimmed}%`;
    const containsParam = `%${trimmed}%`;

    // Artist suggestions (prefix match first, then contains)
    const artistStmt = db.prepare(`
      SELECT title, slug, image_filename, artist_type
      FROM artists
      WHERE title LIKE ? COLLATE NOCASE
      ORDER BY
        CASE WHEN title LIKE ? COLLATE NOCASE THEN 0 ELSE 1 END,
        title
      LIMIT 8
    `);
    const { results: artists } = await artistStmt
      .bind(containsParam, prefixParam)
      .all<{ title: string; slug: string; image_filename: string | null; artist_type: string | null }>();

    for (const a of artists) {
      suggestions.push({
        text: a.title,
        slug: a.slug,
        type: 'artist',
        image_filename: a.image_filename,
        artist_type: a.artist_type,
      });
    }

    // Genre suggestions
    const genreStmt = db.prepare(`
      SELECT name, slug FROM genres
      WHERE name LIKE ? COLLATE NOCASE
      ORDER BY artist_count DESC
      LIMIT 3
    `);
    const { results: genres } = await genreStmt
      .bind(containsParam)
      .all<{ name: string; slug: string }>();

    for (const g of genres) {
      suggestions.push({ text: g.name, slug: g.slug, type: 'genre' });
    }

    // Instrument suggestions
    const instrStmt = db.prepare(`
      SELECT name, slug FROM instruments
      WHERE name LIKE ? COLLATE NOCASE
      ORDER BY artist_count DESC
      LIMIT 3
    `);
    const { results: instruments } = await instrStmt
      .bind(containsParam)
      .all<{ name: string; slug: string }>();

    for (const i of instruments) {
      suggestions.push({ text: i.name, slug: i.slug, type: 'instrument' });
    }

    return new Response(JSON.stringify({ suggestions }), {
      status: 200,
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'public, max-age=60, stale-while-revalidate=300',
      },
    });
  } catch (error) {
    console.error('[api/search/suggest] Error:', error);
    return new Response(
      JSON.stringify({ error: 'Suggestion failed' }),
      { status: 500, headers: { 'Content-Type': 'application/json' } }
    );
  }
};
