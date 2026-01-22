/**
 * Shared SQL queries and helper functions
 */

import type {
  DatabaseAdapter,
  Artist,
  ArtistRow,
  EditableField,
  ArtistEditLog,
} from '@jazzapedia/types';
import { EDITABLE_FIELDS, FIELD_VALIDATIONS } from '@jazzapedia/types';

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
 * Validate a field value based on its configuration
 */
export function validateFieldValue(
  field: EditableField,
  value: unknown
): { valid: boolean; error?: string; normalizedValue?: unknown } {
  const config = FIELD_VALIDATIONS[field];
  if (!config) {
    return { valid: false, error: `Unknown field: ${field}` };
  }

  // Handle null/empty for nullable fields
  if (value === null || value === undefined || value === '') {
    if (config.nullable) {
      return { valid: true, normalizedValue: null };
    }
    return { valid: false, error: `${field} cannot be empty` };
  }

  switch (config.type) {
    case 'string[]': {
      if (!Array.isArray(value)) {
        return { valid: false, error: `${field} must be an array` };
      }
      if (config.maxItems && value.length > config.maxItems) {
        return { valid: false, error: `${field} can have at most ${config.maxItems} items` };
      }
      for (const item of value) {
        if (typeof item !== 'string') {
          return { valid: false, error: `${field} items must be strings` };
        }
        if (config.maxLength && item.length > config.maxLength) {
          return { valid: false, error: `${field} items can be at most ${config.maxLength} characters` };
        }
      }
      // Normalize: trim, dedupe, filter empty
      const normalized = [...new Set(value.map((v) => v.trim()).filter(Boolean))];
      return { valid: true, normalizedValue: JSON.stringify(normalized) };
    }

    case 'enum': {
      if (!config.enumValues?.includes(value as string)) {
        return { valid: false, error: `${field} must be one of: ${config.enumValues?.join(', ')}` };
      }
      return { valid: true, normalizedValue: value };
    }

    case 'date': {
      // Validate YYYY, YYYY-MM, or YYYY-MM-DD format
      const dateRegex = /^\d{4}(-\d{2}(-\d{2})?)?$/;
      if (typeof value !== 'string' || !dateRegex.test(value)) {
        return { valid: false, error: `${field} must be in YYYY, YYYY-MM, or YYYY-MM-DD format` };
      }
      return { valid: true, normalizedValue: value };
    }

    case 'string': {
      if (typeof value !== 'string') {
        return { valid: false, error: `${field} must be a string` };
      }
      if (config.maxLength && value.length > config.maxLength) {
        return { valid: false, error: `${field} can be at most ${config.maxLength} characters` };
      }
      return { valid: true, normalizedValue: value.trim() };
    }

    case 'boolean': {
      if (typeof value !== 'boolean' && value !== 0 && value !== 1) {
        return { valid: false, error: `${field} must be a boolean` };
      }
      return { valid: true, normalizedValue: value ? 1 : 0 };
    }

    case 'object': {
      if (typeof value !== 'object') {
        return { valid: false, error: `${field} must be an object` };
      }
      return { valid: true, normalizedValue: JSON.stringify(value) };
    }

    default:
      return { valid: false, error: `Unknown field type` };
  }
}

/**
 * Update a single field on an artist record
 */
export async function updateArtistField(
  db: DatabaseAdapter,
  slug: string,
  field: EditableField,
  value: unknown
): Promise<{ success: boolean; error?: string; oldValue?: unknown }> {
  // Validate field is allowed
  if (!EDITABLE_FIELDS.includes(field)) {
    return { success: false, error: `Field ${field} is not editable` };
  }

  // Validate value
  const validation = validateFieldValue(field, value);
  if (!validation.valid) {
    return { success: false, error: validation.error };
  }

  // Get current value for audit log
  const currentArtist = await db
    .prepare(`SELECT ${field} FROM artists WHERE slug = ?`)
    .bind(slug)
    .first<Record<string, unknown>>();

  if (!currentArtist) {
    return { success: false, error: 'Artist not found' };
  }

  const oldValue = currentArtist[field];

  // Update the field
  const result = await db
    .prepare(`UPDATE artists SET ${field} = ?, updated_at = datetime('now') WHERE slug = ?`)
    .bind(validation.normalizedValue, slug)
    .run();

  if (!result.success) {
    return { success: false, error: 'Database update failed' };
  }

  return { success: true, oldValue };
}

/**
 * Log an artist edit to the audit table
 */
export async function logArtistEdit(
  db: DatabaseAdapter,
  edit: ArtistEditLog
): Promise<void> {
  await db
    .prepare(
      `INSERT INTO artist_edits (artist_slug, field_name, old_value, new_value, editor_ip, user_agent)
       VALUES (?, ?, ?, ?, ?, ?)`
    )
    .bind(
      edit.artist_slug,
      edit.field_name,
      edit.old_value,
      edit.new_value,
      edit.editor_ip,
      edit.user_agent
    )
    .run();
}

/**
 * Get distinct values for a tag field (for autocomplete)
 */
export async function getDistinctTagValues(
  db: DatabaseAdapter,
  field: 'genres' | 'roles' | 'instruments'
): Promise<string[]> {
  // SQLite json_each to extract array values
  const { results } = await db
    .prepare(
      `SELECT DISTINCT je.value as tag
       FROM artists, json_each(${field}) as je
       WHERE je.value IS NOT NULL AND je.value != ''
       ORDER BY tag`
    )
    .all<{ tag: string }>();

  return results.map((r) => r.tag);
}

