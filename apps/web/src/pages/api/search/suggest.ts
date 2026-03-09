/**
 * Search Suggestions / Autocomplete Endpoint
 *
 * GET /api/search/suggest?q=mil
 *
 * Returns lightweight autocomplete suggestions for artists, genres, instruments,
 * WWOZ tracks, hosts, and locations.
 * Optimized for speed (<50ms target).
 */

import type { APIRoute } from 'astro';
import { getDatabase } from '../../../lib/db';

interface Suggestion {
  text: string;
  slug: string;
  type: 'artist' | 'genre' | 'instrument' | 'track' | 'host' | 'location';
  url: string;
  subtitle?: string;
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
      LIMIT 6
    `);
    const { results: artists } = await artistStmt
      .bind(containsParam, prefixParam)
      .all<{ title: string; slug: string; image_filename: string | null; artist_type: string | null }>();

    for (const a of artists) {
      suggestions.push({
        text: a.title,
        slug: a.slug,
        type: 'artist',
        url: `/artists/${a.slug}`,
        image_filename: a.image_filename,
        artist_type: a.artist_type,
      });
    }

    // WWOZ Track suggestions (only for 2+ char queries)
    if (trimmed.length >= 2) {
      const trackStmt = db.prepare(`
        SELECT artist, title, date
        FROM wwoz_tracks
        WHERE (artist LIKE ? COLLATE NOCASE OR title LIKE ? COLLATE NOCASE)
          AND status = 'found'
        ORDER BY date DESC
        LIMIT 3
      `);
      const { results: tracks } = await trackStmt
        .bind(containsParam, containsParam)
        .all<{ artist: string; title: string; date: string }>();

      for (const t of tracks) {
        suggestions.push({
          text: `${t.artist} — ${t.title}`,
          slug: t.date,
          type: 'track',
          url: `/wwoz/${t.date}`,
          subtitle: t.date,
        });
      }
    }

    // Genre suggestions
    const genreStmt = db.prepare(`
      SELECT name, slug FROM genres
      WHERE name LIKE ? COLLATE NOCASE
      ORDER BY artist_count DESC
      LIMIT 2
    `);
    const { results: genres } = await genreStmt
      .bind(containsParam)
      .all<{ name: string; slug: string }>();

    for (const g of genres) {
      suggestions.push({
        text: g.name,
        slug: g.slug,
        type: 'genre',
        url: `/genres/${g.slug}`,
      });
    }

    // Instrument suggestions
    const instrStmt = db.prepare(`
      SELECT name, slug FROM instruments
      WHERE name LIKE ? COLLATE NOCASE
      ORDER BY artist_count DESC
      LIMIT 2
    `);
    const { results: instruments } = await instrStmt
      .bind(containsParam)
      .all<{ name: string; slug: string }>();

    for (const i of instruments) {
      suggestions.push({
        text: i.name,
        slug: i.slug,
        type: 'instrument',
        url: `/instruments/${i.slug}`,
      });
    }

    // WWOZ Host suggestions (only for 2+ char queries)
    if (trimmed.length >= 2) {
      try {
        const hostStmt = db.prepare(`
          SELECT host, total_tracks
          FROM wwoz_host_profiles
          WHERE host LIKE ? COLLATE NOCASE
          ORDER BY total_tracks DESC
          LIMIT 2
        `);
        const { results: hosts } = await hostStmt
          .bind(containsParam)
          .all<{ host: string; total_tracks: number }>();

        for (const h of hosts) {
          suggestions.push({
            text: h.host,
            slug: h.host.toLowerCase().replace(/\s+/g, '-'),
            type: 'host',
            url: '/wwoz/insights',
            subtitle: 'WWOZ Host',
          });
        }
      } catch {
        // wwoz_host_profiles may not exist in all environments
      }
    }

    // Location suggestions (only for 3+ char queries)
    if (trimmed.length >= 3) {
      const locationStmt = db.prepare(`
        SELECT birth_place as location, COUNT(*) as artist_count
        FROM artists
        WHERE birth_place LIKE ? COLLATE NOCASE AND birth_place IS NOT NULL
        GROUP BY birth_place
        ORDER BY artist_count DESC
        LIMIT 2
      `);
      const { results: locations } = await locationStmt
        .bind(containsParam)
        .all<{ location: string; artist_count: number }>();

      for (const loc of locations) {
        suggestions.push({
          text: loc.location,
          slug: loc.location.toLowerCase().replace(/[^a-z0-9]+/g, '-'),
          type: 'location',
          url: `/search?q=${encodeURIComponent(loc.location)}&type=artists`,
          subtitle: `${loc.artist_count} artist${loc.artist_count !== 1 ? 's' : ''}`,
        });
      }
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
