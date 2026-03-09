/**
 * Decade definitions for artist temporal browsing.
 * Used by: /artists (decade filter), /timeline (grouping), /map (decade filter)
 *
 * Uses neutral decade labels (not jazz-era names) to avoid misclassifying
 * artists by birth year — e.g., Charlie Parker (born 1920) invented bebop
 * but would be labeled "Swing Era" if we used genre-based era names.
 */

export interface Decade {
  readonly id: string;
  readonly label: string;
  readonly range: readonly [number, number];
}

export const DECADES: readonly Decade[] = [
  { id: 'pre-1920', label: 'Pre-1920',  range: [0, 1919] },
  { id: '1920s',    label: '1920s',     range: [1920, 1929] },
  { id: '1930s',    label: '1930s',     range: [1930, 1939] },
  { id: '1940s',    label: '1940s',     range: [1940, 1949] },
  { id: '1950s',    label: '1950s',     range: [1950, 1959] },
  { id: '1960s',    label: '1960s',     range: [1960, 1969] },
  { id: '1970s',    label: '1970s',     range: [1970, 1979] },
  { id: '1980s+',   label: '1980s+',    range: [1980, 9999] },
] as const;

/**
 * Jazz-era annotations for timeline background bands.
 * These describe musical movements, NOT filter categories.
 * Used only as visual annotations on the timeline visualization.
 */
export const JAZZ_ERAS = [
  { label: 'Ragtime & Early Jazz', yearRange: [1895, 1929], color: '#8B6914' },
  { label: 'Swing Era',           yearRange: [1930, 1945], color: '#B8860B' },
  { label: 'Bebop',               yearRange: [1945, 1955], color: '#D4A017' },
  { label: 'Cool & Hard Bop',     yearRange: [1955, 1965], color: '#C5A55A' },
  { label: 'Free Jazz',           yearRange: [1960, 1970], color: '#9B870C' },
  { label: 'Fusion',              yearRange: [1968, 1985], color: '#DAA520' },
  { label: 'Contemporary',        yearRange: [1985, 2026], color: '#E6BE8A' },
] as const;

/** Get the decade definition for a given birth year */
export function getDecadeForYear(year: number): Decade {
  for (const d of DECADES) {
    if (year >= d.range[0] && year <= d.range[1]) return d;
  }
  return DECADES[DECADES.length - 1]; // fallback to last
}

/** Extract birth year from a date string (YYYY, YYYY-MM, or YYYY-MM-DD) */
export function extractBirthYear(birthDate: string | null): number | null {
  if (!birthDate) return null;
  const year = parseInt(birthDate.substring(0, 4), 10);
  return isNaN(year) ? null : year;
}
