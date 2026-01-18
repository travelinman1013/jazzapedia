/**
 * Slug generation utilities
 */

/**
 * Generate URL-friendly slug from a string.
 * Converts to lowercase and replaces non-alphanumeric characters with hyphens.
 */
export function generateSlug(input: string): string {
  return input
    .toLowerCase()
    .replace(/\.md$/, '') // Remove .md extension if present
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/-+/g, '-')
    .replace(/^-+|-+$/g, '');
}

/**
 * Generate slug from filename (removes extension first)
 */
export function slugFromFilename(filename: string): string {
  const name = filename.replace(/\.[^/.]+$/, ''); // Remove any extension
  return generateSlug(name);
}

/**
 * Normalize artist name for matching
 * Handles common variations like "The Band" vs "Band, The"
 */
export function normalizeArtistName(name: string): string {
  return name
    .toLowerCase()
    .replace(/^the\s+/i, '')
    .replace(/,\s*the$/i, '')
    .replace(/['']/g, "'")
    .replace(/[""]/g, '"')
    .trim();
}

/**
 * Check if two artist names are likely the same
 */
export function artistNamesMatch(name1: string, name2: string): boolean {
  return normalizeArtistName(name1) === normalizeArtistName(name2);
}
