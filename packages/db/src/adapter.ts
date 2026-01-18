/**
 * Database adapter interfaces
 */

import type { PreparedStatement, DatabaseAdapter, WriteResult } from '@jazzapedia/types';

export type { PreparedStatement, DatabaseAdapter, WriteResult };

/**
 * Environment type for database adapter selection
 */
export type DatabaseEnvironment = 'cloudflare' | 'docker' | 'auto';

/**
 * Options for getting a database adapter
 */
export interface GetDatabaseOptions {
  /** Force a specific environment */
  environment?: DatabaseEnvironment;
  /** Path to SQLite database file (for Docker mode) */
  dbPath?: string;
  /** Cloudflare D1 binding (for Cloudflare mode) */
  d1Binding?: DatabaseAdapter;
  /** Whether to open SQLite in readonly mode */
  readonly?: boolean;
}

/**
 * Detect the current environment
 */
export function detectEnvironment(): DatabaseEnvironment {
  if (typeof process !== 'undefined' && process.env?.DEPLOY_TARGET === 'docker') {
    return 'docker';
  }
  return 'cloudflare';
}
