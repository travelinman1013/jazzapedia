/**
 * @jazzapedia/db
 *
 * Database abstraction layer for Jazzapedia
 * Supports both Cloudflare D1 and SQLite (better-sqlite3)
 */

// Re-export types
export type {
  PreparedStatement,
  DatabaseAdapter,
  WriteResult,
  DatabaseEnvironment,
  GetDatabaseOptions,
} from './adapter.js';

export { detectEnvironment } from './adapter.js';

// SQLite adapter
export { SqliteDatabaseAdapter, createSqliteAdapter } from './sqlite.js';

// D1 adapter
export { getD1FromLocals } from './d1.js';

// Queries
export {
  parseArtistRow,
  getArtistBySlug,
  getArtistById,
  getArtists,
  getArtistCount,
  upsertArtist,
  validateFieldValue,
  updateArtistField,
  logArtistEdit,
  getDistinctTagValues,
} from './queries.js';

// Main entry point
import { detectEnvironment, type GetDatabaseOptions } from './adapter.js';
import { createSqliteAdapter } from './sqlite.js';
import { getD1FromLocals } from './d1.js';
import type { DatabaseAdapter } from '@jazzapedia/types';

/**
 * Get the appropriate database adapter based on environment
 *
 * @param options - Configuration options
 * @returns Database adapter or null if not available
 *
 * Usage in Astro pages:
 * ```typescript
 * import { getDatabase } from '@jazzapedia/db';
 * const db = await getDatabase({ d1Binding: Astro.locals.runtime?.env?.DB });
 * if (!db) return Astro.redirect('/error');
 * ```
 */
export async function getDatabase(options: GetDatabaseOptions = {}): Promise<DatabaseAdapter | null> {
  const env = options.environment ?? detectEnvironment();

  if (env === 'docker') {
    const dbPath = options.dbPath ?? process.env.DATABASE_PATH ?? '/data/jazzapedia.db';
    return await createSqliteAdapter(dbPath, { readonly: options.readonly ?? true });
  } else {
    // Cloudflare mode - expect D1 binding to be passed in
    return options.d1Binding ?? null;
  }
}

/**
 * Helper for Astro pages - gets database from Astro.locals
 *
 * Usage:
 * ```typescript
 * import { getDatabaseFromLocals } from '@jazzapedia/db';
 * const db = await getDatabaseFromLocals(Astro.locals);
 * ```
 */
export async function getDatabaseFromLocals(locals: unknown): Promise<DatabaseAdapter | null> {
  const env = detectEnvironment();

  if (env === 'docker') {
    const dbPath = process.env.DATABASE_PATH ?? '/data/jazzapedia.db';
    return await createSqliteAdapter(dbPath, { readonly: true });
  } else {
    return getD1FromLocals(locals);
  }
}
