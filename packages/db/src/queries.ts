/**
 * Shared SQL queries and helper functions
 */

import type { DatabaseAdapter, Artist, ArtistRow, WwozTrack } from '@jazzapedia/types';

/**
 * Parse JSON columns from an artist row
 */
export function parseArtistRow(row: ArtistRow): Artist {
  return {
    ...row,
    artist_type: row.artist_type as 'person' | 'band' | undefined,
    genres: JSON.parse(row.genres || '[]'),
    instruments: JSON.parse(row.instruments || '[]'),
    roles: JSON.parse(row.roles || '[]'),
    spotify_data: JSON.parse(row.spotify_data || '{}'),
    audio_profile: JSON.parse(row.audio_profile || '{}'),
    musical_connections: JSON.parse(row.musical_connections || '{}'),
    external_urls: JSON.parse(row.external_urls || '{}'),
    social_links: JSON.parse(row.social_links || '{}'),
    discography_summary: JSON.parse(row.discography_summary || '{}'),
    research_sources: JSON.parse(row.research_sources || '[]'),
    is_active: Boolean(row.is_active),
  };
}

/**
 * Get an artist by slug
 */
export async function getArtistBySlug(db: DatabaseAdapter, slug: string): Promise<Artist | null> {
  const row = await db.prepare('SELECT * FROM artists WHERE slug = ?').bind(slug).first<ArtistRow>();
  if (!row) return null;
  return parseArtistRow(row);
}

/**
 * Get an artist by ID
 */
export async function getArtistById(db: DatabaseAdapter, id: number): Promise<Artist | null> {
  const row = await db.prepare('SELECT * FROM artists WHERE id = ?').bind(id).first<ArtistRow>();
  if (!row) return null;
  return parseArtistRow(row);
}

/**
 * Get all artists with pagination
 */
export async function getArtists(
  db: DatabaseAdapter,
  options: { limit?: number; offset?: number; orderBy?: string } = {}
): Promise<Artist[]> {
  const { limit = 100, offset = 0, orderBy = 'title ASC' } = options;
  const { results } = await db
    .prepare(`SELECT * FROM artists ORDER BY ${orderBy} LIMIT ? OFFSET ?`)
    .bind(limit, offset)
    .all<ArtistRow>();
  return results.map(parseArtistRow);
}

/**
 * Get artist count
 */
export async function getArtistCount(db: DatabaseAdapter): Promise<number> {
  const row = await db.prepare('SELECT COUNT(*) as count FROM artists').first<{ count: number }>();
  return row?.count ?? 0;
}

/**
 * Upsert an artist (insert or update on conflict)
 */
export async function upsertArtist(
  db: DatabaseAdapter,
  artist: Partial<Artist> & { slug: string; title: string }
): Promise<{ success: boolean; id?: number }> {
  const sql = `
    INSERT INTO artists (
      slug, title, artist_type, birth_date, death_date, origin, birth_place,
      bio_html, bio_markdown, image_filename, genres, instruments, roles,
      spotify_data, audio_profile, musical_connections, external_urls,
      social_links, discography_summary, research_sources, career_span,
      is_active, primary_role, content_hash, created_at, updated_at
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'), datetime('now'))
    ON CONFLICT(slug) DO UPDATE SET
      title = excluded.title,
      artist_type = excluded.artist_type,
      birth_date = excluded.birth_date,
      death_date = excluded.death_date,
      origin = excluded.origin,
      birth_place = excluded.birth_place,
      bio_html = excluded.bio_html,
      bio_markdown = excluded.bio_markdown,
      image_filename = excluded.image_filename,
      genres = excluded.genres,
      instruments = excluded.instruments,
      roles = excluded.roles,
      spotify_data = excluded.spotify_data,
      audio_profile = excluded.audio_profile,
      musical_connections = excluded.musical_connections,
      external_urls = excluded.external_urls,
      social_links = excluded.social_links,
      discography_summary = excluded.discography_summary,
      research_sources = excluded.research_sources,
      career_span = excluded.career_span,
      is_active = excluded.is_active,
      primary_role = excluded.primary_role,
      content_hash = excluded.content_hash,
      updated_at = datetime('now')
  `;

  const result = await db
    .prepare(sql)
    .bind(
      artist.slug,
      artist.title,
      artist.artist_type ?? null,
      artist.birth_date ?? null,
      artist.death_date ?? null,
      artist.origin ?? null,
      artist.birth_place ?? null,
      artist.bio_html ?? null,
      artist.bio_markdown ?? null,
      artist.image_filename ?? null,
      JSON.stringify(artist.genres ?? []),
      JSON.stringify(artist.instruments ?? []),
      JSON.stringify(artist.roles ?? []),
      JSON.stringify(artist.spotify_data ?? {}),
      JSON.stringify(artist.audio_profile ?? {}),
      JSON.stringify(artist.musical_connections ?? {}),
      JSON.stringify(artist.external_urls ?? {}),
      JSON.stringify(artist.social_links ?? {}),
      JSON.stringify(artist.discography_summary ?? {}),
      JSON.stringify(artist.research_sources ?? []),
      artist.career_span ?? null,
      artist.is_active ? 1 : 0,
      artist.primary_role ?? null,
      artist.content_hash ?? null
    )
    .run();

  return { success: result.success, id: result.meta?.last_row_id };
}

/**
 * Insert a WWOZ track
 */
export async function insertWwozTrack(
  db: DatabaseAdapter,
  track: Omit<WwozTrack, 'id' | 'created_at'>
): Promise<{ success: boolean; id?: number }> {
  const sql = `
    INSERT INTO wwoz_tracks (
      artist, title, album, played_at, show_name, host_name,
      spotify_uri, spotify_url, confidence, status, scraped_at, created_at
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, datetime('now'))
  `;

  const result = await db
    .prepare(sql)
    .bind(
      track.artist,
      track.title,
      track.album ?? null,
      track.played_at,
      track.show_name ?? null,
      track.host_name ?? null,
      track.spotify_uri ?? null,
      track.spotify_url ?? null,
      track.confidence ?? null,
      track.status,
      track.scraped_at
    )
    .run();

  return { success: result.success, id: result.meta?.last_row_id };
}

/**
 * Get recent WWOZ tracks for an artist
 */
export async function getWwozTracksForArtist(
  db: DatabaseAdapter,
  artistName: string,
  limit: number = 50
): Promise<WwozTrack[]> {
  const { results } = await db
    .prepare(
      `SELECT * FROM wwoz_tracks
       WHERE artist LIKE ?
       ORDER BY played_at DESC
       LIMIT ?`
    )
    .bind(`%${artistName}%`, limit)
    .all<WwozTrack>();
  return results;
}
