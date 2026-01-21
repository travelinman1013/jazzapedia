/**
 * Database adapter type definitions
 * Compatible with both Cloudflare D1 and better-sqlite3
 */

/**
 * D1-compatible prepared statement interface
 */
export interface PreparedStatement<T = unknown> {
  bind(...values: unknown[]): PreparedStatement<T>;
  first<R = T>(): Promise<R | null>;
  all<R = T>(): Promise<{ results: R[] }>;
  run(): Promise<{ success: boolean; meta?: { changes?: number; last_row_id?: number } }>;
}

/**
 * D1-compatible database adapter interface
 */
export interface DatabaseAdapter {
  prepare(sql: string): PreparedStatement;
}

/**
 * Result from a database write operation
 */
export interface WriteResult {
  success: boolean;
  changes?: number;
  lastInsertRowid?: number;
}

