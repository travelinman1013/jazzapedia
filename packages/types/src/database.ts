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

/**
 * WWOZ track record in database
 */
export interface WwozTrack {
  id: number;
  artist: string;
  title: string;
  album?: string;
  played_at: string;
  show_name?: string;
  host_name?: string;
  spotify_uri?: string;
  spotify_url?: string;
  confidence?: number;
  status: string;
  scraped_at: string;
  created_at: string;
}

/**
 * Genre catalog entry
 */
export interface Genre {
  id: number;
  name: string;
  slug: string;
  artist_count: number;
}

/**
 * Instrument catalog entry
 */
export interface Instrument {
  id: number;
  name: string;
  slug: string;
  artist_count: number;
}

/**
 * Role catalog entry
 */
export interface Role {
  id: number;
  name: string;
  slug: string;
  artist_count: number;
}
