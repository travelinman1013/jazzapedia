/**
 * Shared artist name normalization for deduplication.
 * Used by both the insights page and compute scripts.
 */
export function normalizeArtistName(name: string): string {
  return name
    .toLowerCase()
    .trim()
    .replace(/[.,'"!?]/g, '')
    .replace(/\s+&\s+/g, ' and ')
    .replace(/^the\s+/, '')
    .replace(/\s+/g, ' ')
    .trim();
}
