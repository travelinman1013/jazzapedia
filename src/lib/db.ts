/**
 * Database Abstraction Layer
 *
 * Provides a unified interface for database operations that works with both:
 * - Cloudflare D1 (production deployment)
 * - better-sqlite3 (Docker container)
 *
 * The interface mimics D1's API so existing code works with minimal changes.
 */

// Type for D1-compatible prepared statement
export interface PreparedStatement<T = unknown> {
  bind(...values: unknown[]): PreparedStatement<T>;
  first<R = T>(): Promise<R | null>;
  all<R = T>(): Promise<{ results: R[] }>;
  run(): Promise<{ success: boolean }>;
}

// Type for D1-compatible database
export interface DatabaseAdapter {
  prepare(sql: string): PreparedStatement;
}

// Check if we're in Docker mode
const isDocker = typeof process !== 'undefined' && process.env?.DEPLOY_TARGET === 'docker';

// Singleton for better-sqlite3 database connection
let sqliteDb: any = null;
let DatabaseConstructor: any = null;
let sqliteLoadAttempted = false;

/**
 * Load better-sqlite3 dynamically (only in Docker/Node.js mode)
 */
async function loadSqlite(): Promise<any> {
  if (sqliteLoadAttempted) return DatabaseConstructor;
  sqliteLoadAttempted = true;

  if (!isDocker) return null;

  try {
    // Dynamic import of better-sqlite3 (works in Node.js ESM)
    const module = await import('better-sqlite3');
    DatabaseConstructor = module.default;
    console.log('[db] Loaded better-sqlite3 module');
  } catch (error) {
    console.error('[db] Failed to load better-sqlite3:', error);
  }

  return DatabaseConstructor;
}

/**
 * Get SQLite database instance (lazy initialization)
 */
async function getSqliteDatabase(): Promise<any> {
  if (sqliteDb) return sqliteDb;

  const Database = await loadSqlite();
  if (!Database) {
    console.error('[db] better-sqlite3 not available');
    return null;
  }

  try {
    const dbPath = process.env.DATABASE_PATH || '/data/jazzapedia.db';
    sqliteDb = new Database(dbPath, { readonly: true });
    console.log(`[db] Connected to SQLite database: ${dbPath}`);
    return sqliteDb;
  } catch (error) {
    console.error('[db] Failed to initialize SQLite database:', error);
    return null;
  }
}

/**
 * SQLite adapter that wraps better-sqlite3 with D1-compatible async interface
 */
class SqlitePreparedStatement implements PreparedStatement {
  private sql: string;
  private db: any;
  private boundValues: unknown[] = [];

  constructor(db: any, sql: string) {
    this.db = db;
    this.sql = sql;
  }

  bind(...values: unknown[]): PreparedStatement {
    this.boundValues = values;
    return this;
  }

  async first<R = unknown>(): Promise<R | null> {
    try {
      const stmt = this.db.prepare(this.sql);
      const result = stmt.get(...this.boundValues);
      return (result as R) || null;
    } catch (error) {
      console.error('[db] Error in first():', error);
      throw error;
    }
  }

  async all<R = unknown>(): Promise<{ results: R[] }> {
    try {
      const stmt = this.db.prepare(this.sql);
      const results = stmt.all(...this.boundValues);
      return { results: results as R[] };
    } catch (error) {
      console.error('[db] Error in all():', error);
      throw error;
    }
  }

  async run(): Promise<{ success: boolean }> {
    try {
      const stmt = this.db.prepare(this.sql);
      stmt.run(...this.boundValues);
      return { success: true };
    } catch (error) {
      console.error('[db] Error in run():', error);
      throw error;
    }
  }
}

/**
 * SQLite database adapter
 */
class SqliteDatabaseAdapter implements DatabaseAdapter {
  private db: any;

  constructor(db: any) {
    this.db = db;
  }

  prepare(sql: string): PreparedStatement {
    return new SqlitePreparedStatement(this.db, sql);
  }
}

/**
 * Get the appropriate database adapter based on environment
 *
 * @param locals - Astro.locals object containing runtime bindings
 * @returns Database adapter or null if not available
 *
 * Usage in Astro pages:
 * ```typescript
 * import { getDatabase } from '../lib/db';
 * const db = await getDatabase(Astro.locals);
 * if (!db) return Astro.redirect('/error');
 * const result = await db.prepare('SELECT * FROM artists').all();
 * ```
 */
export async function getDatabase(locals: App.Locals): Promise<DatabaseAdapter | null> {
  if (isDocker) {
    // Docker mode: use better-sqlite3
    const db = await getSqliteDatabase();
    if (!db) return null;
    return new SqliteDatabaseAdapter(db);
  } else {
    // Cloudflare mode: use D1 from runtime bindings
    const runtime = (locals as any).runtime;
    const d1 = runtime?.env?.DB;
    return d1 || null;
  }
}

/**
 * Get the R2 public URL or default portrait URL based on environment
 *
 * @param locals - Astro.locals object containing runtime bindings
 * @returns Base URL for portraits
 */
export function getPortraitBaseUrl(locals: App.Locals): string {
  if (isDocker) {
    // Docker mode: portraits served from /portraits/ path via nginx
    return '';
  } else {
    // Cloudflare mode: use R2 URL
    const runtime = (locals as any).runtime;
    return runtime?.env?.R2_PUBLIC_URL || 'https://media.jazzapedia.com';
  }
}

/**
 * Build a portrait URL for an artist
 *
 * @param locals - Astro.locals object
 * @param imageFilename - The image filename from the database
 * @returns Full URL to the portrait, or undefined if no image
 */
export function getPortraitUrl(locals: App.Locals, imageFilename: string | null | undefined): string | undefined {
  if (!imageFilename) return undefined;
  const baseUrl = getPortraitBaseUrl(locals);
  return `${baseUrl}/portraits/${imageFilename}`;
}
