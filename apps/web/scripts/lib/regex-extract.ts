/**
 * Pure regex-based metadata extraction from artist biographies.
 * Handles ~40-60% of artists without needing an LLM call.
 */
import { normalizeDate } from './normalize.js';

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

export interface RegexExtractedField<T = string | null> {
  value: T;
  confidence: number;
}

export interface RegexExtractionResult {
  birth_place_full?: RegexExtractedField;
  origin_full?: RegexExtractedField;
  birth_date_iso?: RegexExtractedField;
  death_date_iso?: RegexExtractedField;
  career_status?: RegexExtractedField<'active' | 'deceased' | 'retired' | 'inactive'>;
  artist_type?: RegexExtractedField<'person' | 'band'>;
  instruments?: RegexExtractedField<string[]>;
  genres_normalized?: RegexExtractedField<string[]>;
}

// ---------------------------------------------------------------------------
// Quick Info parser
// ---------------------------------------------------------------------------

interface QuickInfoFields {
  born?: string;
  origin?: string;
  genres?: string;
  instruments?: string;
  died?: string;
}

function parseQuickInfo(bio: string): QuickInfoFields {
  // Extract text between ## Quick Info and ## Biography
  const qiMatch = bio.match(/## Quick Info\s*\n([\s\S]*?)(?=## Biography|$)/i);
  if (!qiMatch) return {};

  const block = qiMatch[1];
  const fields: QuickInfoFields = {};

  const fieldPatterns: Array<[keyof QuickInfoFields, RegExp]> = [
    ['born', /\*\*Born\*\*:\s*(.+)/i],
    ['origin', /\*\*Origin\*\*:\s*(.+)/i],
    ['genres', /\*\*Genres?\*\*:\s*(.+)/i],
    ['instruments', /\*\*Instruments?\*\*:\s*(.+)/i],
    ['died', /\*\*Died\*\*:\s*(.+)/i],
  ];

  for (const [key, pattern] of fieldPatterns) {
    const match = block.match(pattern);
    if (match) {
      fields[key] = match[1].trim();
    }
  }

  return fields;
}

// ---------------------------------------------------------------------------
// Date extractors
// ---------------------------------------------------------------------------

export function extractBirthDate(prose: string): RegexExtractedField | undefined {
  // Pattern: "born on May 18, 1963" or "born May 18, 1963"
  const fullDatePattern = /\bborn\s+(?:on\s+)?(\w+\s+\d{1,2},?\s+\d{4})/i;
  let match = prose.match(fullDatePattern);
  if (match) {
    const normalized = normalizeDate(match[1]);
    if (normalized) return { value: normalized, confidence: 1.0 };
  }

  // Pattern: "(born May 18, 1963)" or "(born on May 18, 1963)"
  const parenFullDate = /\(born\s+(?:on\s+)?(\w+\s+\d{1,2},?\s+\d{4})\)/i;
  match = prose.match(parenFullDate);
  if (match) {
    const normalized = normalizeDate(match[1]);
    if (normalized) return { value: normalized, confidence: 1.0 };
  }

  // Pattern: "born on 18 May 1963" (European format)
  const euDatePattern = /\bborn\s+(?:on\s+)?(\d{1,2}\s+\w+\s+\d{4})/i;
  match = prose.match(euDatePattern);
  if (match) {
    const normalized = normalizeDate(match[1]);
    if (normalized) return { value: normalized, confidence: 1.0 };
  }

  // Pattern: "(1909-1994)" or "(1909–1994)" lifespan — birth year
  const lifespanPattern = /\((\d{4})\s*[-–—]\s*\d{4}\)/;
  match = prose.match(lifespanPattern);
  if (match) {
    return { value: match[1], confidence: 0.8 };
  }

  // Pattern: "born in 1963" or "born 1963" (year only)
  const yearOnlyPattern = /\bborn\s+(?:in\s+)?(\d{4})\b/i;
  match = prose.match(yearOnlyPattern);
  if (match) {
    return { value: match[1], confidence: 0.8 };
  }

  return undefined;
}

export function extractDeathDate(prose: string): RegexExtractedField | undefined {
  // Pattern: "died on May 18, 1963" or "died May 18, 1963"
  const fullDatePattern = /\bdied\s+(?:on\s+)?(\w+\s+\d{1,2},?\s+\d{4})/i;
  let match = prose.match(fullDatePattern);
  if (match) {
    const normalized = normalizeDate(match[1]);
    if (normalized) return { value: normalized, confidence: 1.0 };
  }

  // Pattern: "passed away on May 18, 1963"
  const passedPattern = /\bpassed away\s+(?:on\s+)?(\w+\s+\d{1,2},?\s+\d{4})/i;
  match = prose.match(passedPattern);
  if (match) {
    const normalized = normalizeDate(match[1]);
    if (normalized) return { value: normalized, confidence: 1.0 };
  }

  // Pattern: "died on 18 May 1963" (European format)
  const euDeathPattern = /\bdied\s+(?:on\s+)?(\d{1,2}\s+\w+\s+\d{4})/i;
  match = prose.match(euDeathPattern);
  if (match) {
    const normalized = normalizeDate(match[1]);
    if (normalized) return { value: normalized, confidence: 1.0 };
  }

  // Pattern: "(1909-1994)" lifespan — death year
  const lifespanPattern = /\(\d{4}\s*[-–—]\s*(\d{4})\)/;
  match = prose.match(lifespanPattern);
  if (match) {
    return { value: match[1], confidence: 0.8 };
  }

  return undefined;
}

// ---------------------------------------------------------------------------
// Career status
// ---------------------------------------------------------------------------

export function extractCareerStatus(
  prose: string,
  deathDate: string | null,
): RegexExtractedField<'active' | 'deceased' | 'retired' | 'inactive'> | undefined {
  if (deathDate) {
    return { value: 'deceased', confidence: 1.0 };
  }

  // Past tense "was a/an" suggests deceased
  if (/\bwas an?\b/i.test(prose)) {
    return { value: 'deceased', confidence: 0.7 };
  }

  // Present tense "is a/an" suggests active
  if (/\bis an?\b/i.test(prose)) {
    return { value: 'active', confidence: 0.6 };
  }

  return undefined;
}

// ---------------------------------------------------------------------------
// Artist type
// ---------------------------------------------------------------------------

const PERSON_WORDS = [
  'musician', 'singer', 'pianist', 'guitarist', 'drummer', 'bassist',
  'saxophonist', 'trumpeter', 'trombonist', 'vocalist', 'songwriter',
  'composer', 'producer', 'rapper', 'DJ', 'multi-instrumentalist',
  'keyboardist', 'organist', 'harmonicist', 'violinist', 'flutist',
  'clarinetist', 'percussionist', 'artist', 'entertainer', 'performer',
  'accordionist', 'banjo player', 'fiddler', 'cellist', 'harpist',
];

const BAND_WORDS = [
  'band', 'group', 'ensemble', 'orchestra', 'duo', 'trio', 'quartet',
  'quintet', 'sextet', 'collective', 'supergroup', 'choir', 'chorus',
];

const BAND_KEYWORD_RE = /\b(?:trio|quartet|quintet|sextet|orchestra|band|ensemble|collective|society|allstars|all-stars|all stars)\b/i;

export function extractArtistType(
  prose: string,
  title: string,
): RegexExtractedField<'person' | 'band'> | undefined {
  // Bio patterns: "is a/an [...] musician/band"
  const personPattern = new RegExp(
    `\\bis an?\\s[\\w\\s,-]*(${PERSON_WORDS.join('|')})\\b`,
    'i',
  );
  if (personPattern.test(prose)) {
    return { value: 'person', confidence: 0.95 };
  }

  const bandPattern = new RegExp(
    `\\bis an?\\s[\\w\\s,-]*(${BAND_WORDS.join('|')})\\b`,
    'i',
  );
  if (bandPattern.test(prose)) {
    return { value: 'band', confidence: 0.95 };
  }

  // Past tense variants
  const personPatternPast = new RegExp(
    `\\bwas an?\\s[\\w\\s,-]*(${PERSON_WORDS.join('|')})\\b`,
    'i',
  );
  if (personPatternPast.test(prose)) {
    return { value: 'person', confidence: 0.95 };
  }

  const bandPatternPast = new RegExp(
    `\\bwas an?\\s[\\w\\s,-]*(${BAND_WORDS.join('|')})\\b`,
    'i',
  );
  if (bandPatternPast.test(prose)) {
    return { value: 'band', confidence: 0.95 };
  }

  // Title keyword fallback
  if (BAND_KEYWORD_RE.test(title)) {
    return { value: 'band', confidence: 0.85 };
  }

  return undefined;
}

// ---------------------------------------------------------------------------
// Orchestrator
// ---------------------------------------------------------------------------

/**
 * Skip collaborative entries where title suggests multiple people,
 * since regex might extract the wrong person's data.
 * But allow "and His/Her/The" patterns (band names).
 */
function isCollaborativeTitle(title: string): boolean {
  // Allow "and His/Her/The" (band names like "Duke Ellington and His Orchestra")
  if (/\band (?:his|her|the)\b/i.test(title)) return false;
  // Skip titles with comma or "and" suggesting collaborations
  return /,|\band\b/i.test(title);
}

export function regexExtractMetadata(
  bio: string,
  title: string,
): RegexExtractionResult {
  const result: RegexExtractionResult = {};

  if (!bio || bio.length < 50) return result;

  const skipCollabExtraction = isCollaborativeTitle(title);

  // Parse Quick Info section
  const quickInfo = parseQuickInfo(bio);

  // Extract biography prose (after ## Biography)
  const bioMatch = bio.match(/## Biography\s*\n([\s\S]*)/i);
  const prose = bioMatch ? bioMatch[1] : bio;

  // --- Quick Info fields ---

  // Born line: may contain "1945, Victoria" (date + location)
  if (quickInfo.born && !skipCollabExtraction) {
    const bornLine = quickInfo.born;

    // Try to split date from location: "1945, Victoria" or "May 18, 1963, Victoria, Virginia"
    // Strategy: try normalizeDate on progressively longer prefixes
    const parts = bornLine.split(',').map(p => p.trim());
    let dateStr: string | null = null;
    let locationParts: string[] = [];

    // Try first part as date
    const firstAsDate = normalizeDate(parts[0]);
    if (firstAsDate) {
      dateStr = firstAsDate;
      locationParts = parts.slice(1);
    } else if (parts.length >= 2) {
      // Try "Month Day, Year" (first two parts combined)
      const twoPartDate = normalizeDate(`${parts[0]}, ${parts[1]}`);
      if (twoPartDate) {
        dateStr = twoPartDate;
        locationParts = parts.slice(2);
      }
    }

    if (dateStr) {
      result.birth_date_iso = { value: dateStr, confidence: 1.0 };
    }

    if (locationParts.length > 0) {
      const location = locationParts.join(', ');
      if (location) {
        result.birth_place_full = { value: location, confidence: 0.9 };
      }
    } else if (!dateStr) {
      // Entire Born line is a location (no date component)
      result.birth_place_full = { value: bornLine, confidence: 0.9 };
    }
  }

  // Origin line
  if (quickInfo.origin) {
    result.origin_full = { value: quickInfo.origin, confidence: 0.95 };
  }

  // Instruments line
  if (quickInfo.instruments) {
    const instruments = quickInfo.instruments
      .split(',')
      .map(i => i.trim().toLowerCase())
      .filter(i => i.length > 0);
    if (instruments.length > 0) {
      result.instruments = { value: instruments, confidence: 0.95 };
    }
  }

  // Genres line
  if (quickInfo.genres) {
    const genres = quickInfo.genres
      .split(',')
      .map(g => g.trim().toLowerCase())
      .filter(g => g.length > 0);
    if (genres.length > 0) {
      result.genres_normalized = { value: genres, confidence: 0.9 };
    }
  }

  // Died line
  if (quickInfo.died) {
    const diedDate = normalizeDate(quickInfo.died);
    if (diedDate) {
      result.death_date_iso = { value: diedDate, confidence: 1.0 };
    }
  }

  // --- Prose-based extraction ---

  // Birth date from prose (if not already found in Quick Info)
  if (!result.birth_date_iso && !skipCollabExtraction) {
    const birthDate = extractBirthDate(prose);
    if (birthDate) {
      result.birth_date_iso = birthDate;
    }
  }

  // Death date from prose (if not already found)
  if (!result.death_date_iso && !skipCollabExtraction) {
    const deathDate = extractDeathDate(prose);
    if (deathDate) {
      result.death_date_iso = deathDate;
    }
  }

  // Career status
  const deathVal = result.death_date_iso?.value ?? null;
  const careerStatus = extractCareerStatus(prose, deathVal);
  if (careerStatus) {
    result.career_status = careerStatus;
  }

  // Artist type
  const artistType = extractArtistType(prose, title);
  if (artistType) {
    result.artist_type = artistType;
  }

  return result;
}
