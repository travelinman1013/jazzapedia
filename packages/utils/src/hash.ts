/**
 * Content hashing utilities for change detection
 */

/**
 * Compute MD5 hash of content (for incremental sync)
 * Works in both Node.js and browser environments
 */
export async function computeHash(content: string): Promise<string> {
  // Use Web Crypto API if available (works in browsers and modern Node.js)
  if (typeof crypto !== 'undefined' && crypto.subtle) {
    const encoder = new TextEncoder();
    const data = encoder.encode(content);
    const hashBuffer = await crypto.subtle.digest('SHA-256', data);
    const hashArray = Array.from(new Uint8Array(hashBuffer));
    return hashArray.map((b) => b.toString(16).padStart(2, '0')).join('');
  }

  // Fallback for Node.js without Web Crypto
  if (typeof process !== 'undefined') {
    const crypto = await import('node:crypto');
    return crypto.createHash('md5').update(content).digest('hex');
  }

  throw new Error('No crypto implementation available');
}

/**
 * Synchronous MD5 hash computation (Node.js only)
 */
export function computeHashSync(content: string): string {
  // eslint-disable-next-line @typescript-eslint/no-var-requires
  const crypto = require('node:crypto');
  return crypto.createHash('md5').update(content).digest('hex');
}

/**
 * Compare two hashes for equality
 */
export function hashesMatch(hash1: string | null | undefined, hash2: string | null | undefined): boolean {
  if (!hash1 || !hash2) return false;
  return hash1.toLowerCase() === hash2.toLowerCase();
}
