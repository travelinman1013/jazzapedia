/**
 * Cloudflare D1 adapter
 * D1 already implements the DatabaseAdapter interface natively
 */

import type { DatabaseAdapter } from '@jazzapedia/types';

/**
 * Wrapper for Cloudflare D1 to ensure type safety
 * D1 already matches our PreparedStatement and DatabaseAdapter interfaces
 */
export function createD1Adapter(d1Binding: DatabaseAdapter): DatabaseAdapter {
  return d1Binding;
}

/**
 * Extract D1 binding from Astro locals (Cloudflare runtime)
 */
export function getD1FromLocals(locals: unknown): DatabaseAdapter | null {
  const runtime = (locals as { runtime?: { env?: { DB?: DatabaseAdapter } } })?.runtime;
  return runtime?.env?.DB ?? null;
}
