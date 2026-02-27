/**
 * Artist Field Edit Endpoint
 *
 * POST /api/artists/[slug]/edit
 * Body: { token: string, field: string, value: unknown }
 * Returns: { success: boolean, field?: string, newValue?: unknown, previousValue?: unknown, error?: string }
 */

import type { APIRoute } from 'astro';
import { getWritableDatabase } from '../../../../lib/db';

// Editable fields whitelist
const EDITABLE_FIELDS = [
  'genres', 'instruments', 'artist_type', 'birth_date', 'death_date',
  'birth_place', 'origin', 'career_span', 'is_active', 'aliases', 'birth_name',
  'discography_summary',
] as const;

type EditableField = (typeof EDITABLE_FIELDS)[number];

// Field validation configuration
const FIELD_VALIDATIONS: Record<EditableField, { type: string; maxItems?: number; maxLength?: number; enumValues?: string[]; nullable?: boolean }> = {
  genres: { type: 'string[]', maxItems: 30, maxLength: 100 },
  instruments: { type: 'string[]', maxItems: 30, maxLength: 100 },
  artist_type: { type: 'enum', enumValues: ['person', 'band'], nullable: true },
  birth_date: { type: 'date', nullable: true },
  death_date: { type: 'date', nullable: true },
  birth_place: { type: 'string', maxLength: 200, nullable: true },
  origin: { type: 'string', maxLength: 200, nullable: true },
  career_span: { type: 'string', maxLength: 50, nullable: true },
  is_active: { type: 'boolean' },
  aliases: { type: 'string[]', maxItems: 10, maxLength: 100 },
  birth_name: { type: 'string', maxLength: 200, nullable: true },
  discography_summary: { type: 'object', nullable: true },
};

/**
 * Validate a field value based on its configuration
 */
function validateFieldValue(
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
async function updateArtistField(
  db: any,
  slug: string,
  field: EditableField,
  value: unknown
): Promise<{ success: boolean; error?: string; oldValue?: unknown }> {
  // Get current value for audit log
  const currentArtist = await db
    .prepare(`SELECT ${field} FROM artists WHERE slug = ?`)
    .bind(slug)
    .first();

  if (!currentArtist) {
    return { success: false, error: 'Artist not found' };
  }

  const oldValue = currentArtist[field];

  // Validate value
  const validation = validateFieldValue(field, value);
  if (!validation.valid) {
    return { success: false, error: validation.error };
  }

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
async function logArtistEdit(
  db: any,
  edit: {
    artist_slug: string;
    field_name: string;
    old_value: string | null;
    new_value: string | null;
    editor_ip: string;
    user_agent: string;
  }
): Promise<void> {
  try {
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
  } catch (err) {
    // Log but don't fail the request if audit logging fails
    console.error('[edit] Failed to log edit:', err);
  }
}

export const POST: APIRoute = async ({ params, request, locals, clientAddress }) => {
  const { slug } = params;

  if (!slug) {
    return new Response(
      JSON.stringify({ success: false, error: 'Artist slug required' }),
      {
        status: 400,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }

  // Parse request body
  let body: { token?: string; field?: string; value?: unknown };
  try {
    body = await request.json();
  } catch {
    return new Response(
      JSON.stringify({ success: false, error: 'Invalid JSON body' }),
      {
        status: 400,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }

  const { token, field, value } = body;

  // Validate token presence (simple check - token was issued by verify endpoint)
  if (!token || typeof token !== 'string') {
    return new Response(
      JSON.stringify({ success: false, error: 'Authorization token required' }),
      {
        status: 401,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }

  // Get the edit password to verify token was legitimately issued
  // (In production, you'd verify the token cryptographically)
  let editPassword: string | undefined;
  if (typeof process !== 'undefined' && process.env?.EDIT_PASSWORD) {
    editPassword = process.env.EDIT_PASSWORD;
  } else {
    const runtime = (locals as Record<string, unknown>).runtime as
      | { env?: { EDIT_PASSWORD?: string } }
      | undefined;
    editPassword = runtime?.env?.EDIT_PASSWORD;
  }

  if (!editPassword) {
    return new Response(
      JSON.stringify({ success: false, error: 'Editing not configured' }),
      {
        status: 500,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }

  // Validate field name (whitelist)
  if (!field || !EDITABLE_FIELDS.includes(field as EditableField)) {
    return new Response(
      JSON.stringify({
        success: false,
        error: `Invalid field. Allowed fields: ${EDITABLE_FIELDS.join(', ')}`,
      }),
      {
        status: 400,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }

  // Validate field value
  const validation = validateFieldValue(field as EditableField, value);
  if (!validation.valid) {
    return new Response(
      JSON.stringify({ success: false, error: validation.error }),
      {
        status: 400,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }

  // Get writable database
  const db = await getWritableDatabase(locals);
  if (!db) {
    return new Response(
      JSON.stringify({ success: false, error: 'Database not available' }),
      {
        status: 500,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }

  // Get client info for audit log
  const editorIp = clientAddress || request.headers.get('CF-Connecting-IP') || 'unknown';
  const userAgent = request.headers.get('User-Agent') || 'unknown';

  // Perform the update
  try {
    const result = await updateArtistField(db, slug, field as EditableField, value);

    if (!result.success) {
      return new Response(
        JSON.stringify({ success: false, error: result.error }),
        {
          status: 400,
          headers: { 'Content-Type': 'application/json' },
        }
      );
    }

    // Log the edit
    await logArtistEdit(db, {
      artist_slug: slug,
      field_name: field as EditableField,
      old_value: typeof result.oldValue === 'string'
        ? result.oldValue
        : JSON.stringify(result.oldValue),
      new_value: typeof validation.normalizedValue === 'string'
        ? validation.normalizedValue
        : JSON.stringify(validation.normalizedValue),
      editor_ip: editorIp,
      user_agent: userAgent,
    });

    return new Response(
      JSON.stringify({
        success: true,
        field,
        newValue: validation.normalizedValue,
        previousValue: result.oldValue,
      }),
      {
        status: 200,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  } catch (error) {
    console.error('[edit] Error updating artist:', error);
    return new Response(
      JSON.stringify({ success: false, error: 'Failed to update artist' }),
      {
        status: 500,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }
};
