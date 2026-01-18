/**
 * SQLite adapter using better-sqlite3
 * Provides D1-compatible async interface over synchronous SQLite
 */

import type { PreparedStatement, DatabaseAdapter } from '@jazzapedia/types';
import type BetterSqlite3 from 'better-sqlite3';

type BetterSqlite3Database = BetterSqlite3.Database;
type BetterSqlite3Constructor = typeof BetterSqlite3;

/**
 * Prepared statement wrapper for better-sqlite3
 */
class SqlitePreparedStatement<T = unknown> implements PreparedStatement<T> {
  private sql: string;
  private db: BetterSqlite3Database;
  private boundValues: unknown[] = [];

  constructor(db: BetterSqlite3Database, sql: string) {
    this.db = db;
    this.sql = sql;
  }

  bind(...values: unknown[]): PreparedStatement<T> {
    this.boundValues = values;
    return this;
  }

  async first<R = T>(): Promise<R | null> {
    try {
      const stmt = this.db.prepare(this.sql);
      const result = stmt.get(...this.boundValues);
      return (result as R) || null;
    } catch (error) {
      console.error('[sqlite] Error in first():', error);
      throw error;
    }
  }

  async all<R = T>(): Promise<{ results: R[] }> {
    try {
      const stmt = this.db.prepare(this.sql);
      const results = stmt.all(...this.boundValues);
      return { results: results as R[] };
    } catch (error) {
      console.error('[sqlite] Error in all():', error);
      throw error;
    }
  }

  async run(): Promise<{ success: boolean; meta?: { changes?: number; last_row_id?: number } }> {
    try {
      const stmt = this.db.prepare(this.sql);
      const result = stmt.run(...this.boundValues);
      return {
        success: true,
        meta: {
          changes: result.changes,
          last_row_id: Number(result.lastInsertRowid),
        },
      };
    } catch (error) {
      console.error('[sqlite] Error in run():', error);
      throw error;
    }
  }
}

/**
 * SQLite database adapter
 */
export class SqliteDatabaseAdapter implements DatabaseAdapter {
  private db: BetterSqlite3Database;

  constructor(db: BetterSqlite3Database) {
    this.db = db;
  }

  prepare(sql: string): PreparedStatement {
    return new SqlitePreparedStatement(this.db, sql);
  }

  /**
   * Execute multiple statements in a transaction
   */
  async transaction<T>(fn: () => Promise<T>): Promise<T> {
    const transaction = this.db.transaction(async () => {
      return await fn();
    });
    return transaction() as T;
  }

  /**
   * Close the database connection
   */
  close(): void {
    this.db.close();
  }

  /**
   * Get the underlying better-sqlite3 database instance
   */
  getRawDb(): BetterSqlite3Database {
    return this.db;
  }
}

// Singleton for lazy-loaded better-sqlite3
let DatabaseConstructor: BetterSqlite3Constructor | null = null;
let loadAttempted = false;

/**
 * Dynamically load better-sqlite3 (only available in Node.js)
 */
async function loadBetterSqlite3(): Promise<BetterSqlite3Constructor | null> {
  if (loadAttempted) return DatabaseConstructor;
  loadAttempted = true;

  try {
    const module = await import('better-sqlite3');
    DatabaseConstructor = module.default;
    return DatabaseConstructor;
  } catch (error) {
    console.error('[sqlite] Failed to load better-sqlite3:', error);
    return null;
  }
}

/**
 * Create a SQLite database adapter
 */
export async function createSqliteAdapter(
  dbPath: string,
  options: { readonly?: boolean } = {}
): Promise<SqliteDatabaseAdapter | null> {
  const Database = await loadBetterSqlite3();
  if (!Database) {
    return null;
  }

  try {
    const db = new Database(dbPath, { readonly: options.readonly ?? false });
    // Enable WAL mode for concurrent read/write support
    if (!options.readonly) {
      db.pragma('journal_mode = WAL');
    }
    console.log(`[sqlite] Connected to database: ${dbPath}`);
    return new SqliteDatabaseAdapter(db);
  } catch (error) {
    console.error('[sqlite] Failed to open database:', error);
    return null;
  }
}
