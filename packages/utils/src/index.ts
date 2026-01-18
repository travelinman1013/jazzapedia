/**
 * @jazzapedia/utils
 *
 * Shared utility functions for the Jazzapedia monorepo
 */

// Slug utilities
export {
  generateSlug,
  slugFromFilename,
  normalizeArtistName,
  artistNamesMatch,
} from './slug.js';

// Markdown utilities
export {
  stripHtml,
  markdownToPlainText,
  extractSummary,
  removeHtmlSection,
} from './markdown.js';

// Hash utilities
export {
  computeHash,
  computeHashSync,
  hashesMatch,
} from './hash.js';
