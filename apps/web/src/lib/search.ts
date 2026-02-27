/**
 * Shared Search Library
 *
 * Core search logic used by both the /api/search endpoint and the /search page.
 * Supports FTS5 full-text search for artists and LIKE-based search for WWOZ tracks.
 */

import type { DatabaseAdapter } from './db';

// ============================================================
// Types
// ============================================================

export interface SearchOptions {
  query: string;
  type: 'artists' | 'tracks' | 'all';
  genre?: string;
  instrument?: string;
  artistType?: string;
  limit: number;
  offset: number;
}

export interface ArtistSearchResult {
  slug: string;
  title: string;
  artist_type: string | null;
  genres: string | null;
  image_filename: string | null;
  primary_role: string | null;
  bio_snippet: string;
}

export interface TrackSearchResult {
  date: string;
  time: string | null;
  artist: string;
  title: string;
  album: string | null;
  show_name: string | null;
  host: string | null;
  spotify_url: string | null;
}

export interface SearchResponse {
  query: string;
  correctedQuery: string | null;
  type: string;
  searchTime: number;
  results: {
    artists: ArtistSearchResult[];
    tracks: TrackSearchResult[];
  };
  totals: {
    artists: number;
    tracks: number;
  };
  filters: {
    genre?: string;
    instrument?: string;
    artistType?: string;
  };
}

// ============================================================
// Misspelling Corrections
// ============================================================

const COMMON_CORRECTIONS: Record<string, string> = {
  'thelonius': 'thelonious',
  'coltrain': 'coltrane',
  'coltrne': 'coltrane',
  'dizzey': 'dizzy',
  'dizey': 'dizzy',
  'milse': 'miles',
  'ellinton': 'ellington',
  'ellingtom': 'ellington',
  'gillespee': 'gillespie',
  'gilespie': 'gillespie',
  'monke': 'monk',
  'mingis': 'mingus',
  'armstong': 'armstrong',
  'armstorng': 'armstrong',
  'loius': 'louis',
  'louie': 'louis',
  'marsallis': 'marsalis',
  'marsalas': 'marsalis',
  'wynten': 'wynton',
  'saxxophone': 'saxophone',
  'saxaphone': 'saxophone',
  'trumpit': 'trumpet',
  'trumbone': 'trombone',
  'beebop': 'bebop',
  'be-bop': 'bebop',
  'coolj azz': 'cool jazz',
};

function correctQuery(query: string): { corrected: string; original: string | null } {
  const lower = query.toLowerCase();
  for (const [wrong, right] of Object.entries(COMMON_CORRECTIONS)) {
    if (lower.includes(wrong)) {
      return {
        corrected: query.replace(new RegExp(wrong, 'gi'), right),
        original: query,
      };
    }
  }
  return { corrected: query, original: null };
}

// ============================================================
// FTS5 Query Builder
// ============================================================

function buildFtsQuery(raw: string): string {
  // Remove characters that could break FTS5 syntax (keep quotes, asterisks for advanced users)
  const cleaned = raw.replace(/[^\w\s"*-]/g, '').trim();
  if (!cleaned) return raw.trim();

  // If query contains FTS5 operators, pass through as-is
  if (/\b(AND|OR|NOT)\b/.test(cleaned) || cleaned.includes('"') || cleaned.includes('*')) {
    return cleaned;
  }

  // Add prefix matching to each term for partial word matching
  return cleaned
    .split(/\s+/)
    .filter(t => t.length > 0)
    .map(t => `${t}*`)
    .join(' ');
}

// ============================================================
// Artist Search (FTS5)
// ============================================================

export async function searchArtists(
  db: DatabaseAdapter,
  opts: SearchOptions
): Promise<{ results: ArtistSearchResult[]; total: number }> {
  const ftsQuery = buildFtsQuery(opts.query);

  // Build dynamic WHERE clauses and params
  const extraClauses: string[] = [];
  const params: unknown[] = [ftsQuery];

  if (opts.genre) {
    extraClauses.push('AND EXISTS (SELECT 1 FROM json_each(a.genres) je WHERE je.value = ?)');
    params.push(opts.genre);
  }
  if (opts.instrument) {
    extraClauses.push('AND EXISTS (SELECT 1 FROM json_each(a.instruments) je WHERE je.value = ?)');
    params.push(opts.instrument);
  }
  if (opts.artistType) {
    extraClauses.push('AND a.artist_type = ?');
    params.push(opts.artistType);
  }

  // Add raw query param for exact-match boosting, then limit/offset
  params.push(opts.query, opts.query, opts.limit, opts.offset);

  const sql = `
    SELECT
      a.slug, a.title, a.artist_type, a.genres, a.image_filename, a.primary_role,
      snippet(search_fts, 1, '<mark>', '</mark>', '...', 32) as bio_snippet
    FROM search_fts fts
    JOIN artists a ON fts.rowid = a.id
    WHERE search_fts MATCH ?
    ${extraClauses.join('\n    ')}
    ORDER BY
      (CASE WHEN LOWER(a.title) = LOWER(?) THEN 0
            WHEN LOWER(a.title) LIKE LOWER(?) || '%' THEN 1
            ELSE 2 END),
      bm25(search_fts, 10.0, 5.0, 1.0, 1.0)
    LIMIT ? OFFSET ?
  `;

  try {
    const stmt = db.prepare(sql);
    const { results } = await stmt.bind(...params).all<ArtistSearchResult>();
    return { results, total: results.length };
  } catch (error) {
    console.error('[search] FTS5 query failed, falling back to LIKE:', error);
    return searchArtistsByTitle(db, opts);
  }
}

// ============================================================
// Artist Search Fallback (LIKE on title)
// ============================================================

async function searchArtistsByTitle(
  db: DatabaseAdapter,
  opts: SearchOptions
): Promise<{ results: ArtistSearchResult[]; total: number }> {
  const likeParam = `%${opts.query}%`;
  const extraClauses: string[] = [];
  const params: unknown[] = [likeParam];

  if (opts.genre) {
    extraClauses.push('AND EXISTS (SELECT 1 FROM json_each(genres) je WHERE je.value = ?)');
    params.push(opts.genre);
  }
  if (opts.instrument) {
    extraClauses.push('AND EXISTS (SELECT 1 FROM json_each(instruments) je WHERE je.value = ?)');
    params.push(opts.instrument);
  }
  if (opts.artistType) {
    extraClauses.push('AND artist_type = ?');
    params.push(opts.artistType);
  }

  params.push(opts.limit, opts.offset);

  const sql = `
    SELECT slug, title, artist_type, genres, image_filename, primary_role, '' as bio_snippet
    FROM artists
    WHERE title LIKE ? COLLATE NOCASE
    ${extraClauses.join('\n    ')}
    ORDER BY title
    LIMIT ? OFFSET ?
  `;

  const { results } = await db.prepare(sql).bind(...params).all<ArtistSearchResult>();
  return { results, total: results.length };
}

// ============================================================
// WWOZ Track Search (LIKE)
// ============================================================

export async function searchTracks(
  db: DatabaseAdapter,
  opts: SearchOptions
): Promise<{ results: TrackSearchResult[]; total: number }> {
  const likeParam = `%${opts.query}%`;

  const sql = `
    SELECT date, time, artist, title, album, show_name, host, spotify_url
    FROM wwoz_tracks
    WHERE (artist LIKE ? COLLATE NOCASE OR title LIKE ? COLLATE NOCASE OR album LIKE ? COLLATE NOCASE)
    ORDER BY date DESC, time DESC
    LIMIT ? OFFSET ?
  `;

  const { results } = await db
    .prepare(sql)
    .bind(likeParam, likeParam, likeParam, opts.limit, opts.offset)
    .all<TrackSearchResult>();

  return { results, total: results.length };
}

// ============================================================
// Unified Search
// ============================================================

export async function search(
  db: DatabaseAdapter,
  opts: SearchOptions
): Promise<SearchResponse> {
  const startTime = Date.now();

  // Apply misspelling correction
  const { corrected, original } = correctQuery(opts.query);
  const searchOpts = { ...opts, query: corrected };

  let artistResults: ArtistSearchResult[] = [];
  let trackResults: TrackSearchResult[] = [];
  let artistTotal = 0;
  let trackTotal = 0;

  if (opts.type === 'artists' || opts.type === 'all') {
    const artists = await searchArtists(db, searchOpts);
    artistResults = artists.results;
    artistTotal = artists.total;

    // If corrected query returned no results, try original query
    if (artistResults.length === 0 && original) {
      const origArtists = await searchArtists(db, { ...opts, query: original });
      if (origArtists.results.length > 0) {
        artistResults = origArtists.results;
        artistTotal = origArtists.total;
      }
    }
  }

  if (opts.type === 'tracks' || opts.type === 'all') {
    const trackLimit = opts.type === 'all' ? Math.min(opts.limit, 10) : opts.limit;
    const tracks = await searchTracks(db, { ...searchOpts, limit: trackLimit });
    trackResults = tracks.results;
    trackTotal = tracks.total;
  }

  return {
    query: opts.query,
    correctedQuery: original ? corrected : null,
    type: opts.type,
    searchTime: Date.now() - startTime,
    results: {
      artists: artistResults,
      tracks: trackResults,
    },
    totals: {
      artists: artistTotal,
      tracks: trackTotal,
    },
    filters: {
      genre: opts.genre,
      instrument: opts.instrument,
      artistType: opts.artistType,
    },
  };
}
