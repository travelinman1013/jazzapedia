/**
 * Random Artists API Endpoint
 * GET /api/random-artists?count=5
 * Returns random artists with portraits for the homepage shuffle feature
 */

import type { APIRoute } from 'astro';
import { getDatabase, getPortraitUrl } from '../../lib/db';

export const GET: APIRoute = async ({ url, locals }) => {
  const count = Math.min(parseInt(url.searchParams.get('count') || '5', 10), 20);

  const db = await getDatabase(locals);
  if (!db) {
    return new Response(
      JSON.stringify({ error: 'Database not available' }),
      { status: 500, headers: { 'Content-Type': 'application/json' } }
    );
  }

  try {
    const { results } = await db.prepare(`
      SELECT slug, title, artist_type, genres, image_filename, spotify_data
      FROM artists
      WHERE image_filename IS NOT NULL
      ORDER BY RANDOM()
      LIMIT ?
    `).bind(count).all<{
      slug: string;
      title: string;
      artist_type: string | null;
      genres: string | null;
      image_filename: string | null;
      spotify_data: string | null;
    }>();

    const artists = results.map(a => {
      let genres: string[] = [];
      try { genres = a.genres ? JSON.parse(a.genres) : []; } catch {}
      let popularity: number | undefined;
      try {
        const sp = a.spotify_data ? JSON.parse(a.spotify_data) : {};
        popularity = sp.popularity;
      } catch {}

      const artistType = a.artist_type === 'solo_singer' ? 'Vocalist'
        : a.artist_type === 'instrumentalist' ? 'Instrumentalist'
        : a.artist_type === 'group_or_band' ? 'Group'
        : undefined;

      return {
        name: a.title,
        slug: a.slug,
        portrait: getPortraitUrl(locals, a.image_filename),
        genres: genres.slice(0, 2),
        popularity,
        artistType,
      };
    });

    return new Response(JSON.stringify({ artists }), {
      status: 200,
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'no-store',
      },
    });
  } catch (error) {
    console.error('[api/random-artists] Error:', error);
    return new Response(
      JSON.stringify({ error: 'Failed to fetch random artists' }),
      { status: 500, headers: { 'Content-Type': 'application/json' } }
    );
  }
};
