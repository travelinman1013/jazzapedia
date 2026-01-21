/**
 * Cloudflare D1 adapter utilities
 */

import type { DatabaseAdapter } from '@jazzapedia/types';

/**
 * Extract D1 binding from Astro locals (Cloudflare runtime)
 */
export function getD1FromLocals(locals: unknown): DatabaseAdapter | null {
  const runtime = (locals as { runtime?: { env?: { DB?: DatabaseAdapter } } })?.runtime;
  return runtime?.env?.DB ?? null;
}
