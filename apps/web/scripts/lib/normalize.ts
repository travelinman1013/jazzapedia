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

/**
 * Converts a string to Title Case with music-industry awareness.
 * Handles small words, uppercase acronyms, exact-cased abbreviations,
 * O'/Mc prefixes, and preserves intentionally stylized artist names.
 */
export function toTitleCase(str: string): string {
  if (!str || !str.trim()) return str;

  const exactArtists: Record<string, string> = {
    'abba': 'ABBA',
    'ub40': 'UB40',
    'ac/dc': 'AC/DC',
    'devo': 'DEVO',
    'mgmt': 'MGMT',
    'mf doom': 'MF DOOM',
    'rza': 'RZA',
    'gza': 'GZA',
    'odb': 'ODB',
    'k.d. lang': 'k.d. lang',
    'deadmau5': 'deadmau5',
    'blink-182': 'blink-182',
    '311': '311',
    'badbadnotgood': 'BADBADNOTGOOD',
    'sbtrkt': 'SBTRKT',
    'mrcy': 'MRCY',
    '95mp': '95MP',
  };

  const lowerInput = str.toLowerCase().trim();
  if (exactArtists[lowerInput] !== undefined) {
    return exactArtists[lowerInput];
  }

  const smallWords = new Set([
    'a', 'an', 'the', 'and', 'but', 'or', 'for', 'nor',
    'on', 'at', 'to', 'from', 'by', 'de', 'del', 'von',
    'van', 'di', 'da', 'le', 'la', 'el',
  ]);

  const uppercaseWords: Record<string, string> = {
    'dj': 'DJ', 'mc': 'MC', 'dmc': 'DMC',
    'ii': 'II', 'iii': 'III', 'iv': 'IV',
    'jr': 'Jr', 'sr': 'Sr',
    'nyc': 'NYC', 'usa': 'USA', 'uk': 'UK',
    'rza': 'RZA', 'gza': 'GZA', 'odb': 'ODB',
    'mf': 'MF',
  };

  const exactCased: Record<string, string> = {
    'dr.': 'Dr.', 'st.': 'St.', 'b.b.': 'B.B.',
    't.i.': 'T.I.', 'r.l.': 'R.L.', 'j.j.': 'J.J.', 'j.b.': 'J.B.',
    'rev.': 'Rev.',
  };

  // Split on spaces, but preserve hyphenated segments
  const tokens = str.trim().split(/\s+/);

  const processWord = (word: string, isFirst: boolean, isLast: boolean): string => {
    // Handle hyphenated words
    if (word.includes('-')) {
      const parts = word.split('-');
      return parts
        .map((part, i) => {
          const partIsFirst = isFirst && i === 0;
          const partIsLast = isLast && i === parts.length - 1;
          return processWord(part, partIsFirst, partIsLast);
        })
        .join('-');
    }

    const lower = word.toLowerCase();

    // Check exact-cased abbreviations
    if (exactCased[lower] !== undefined) {
      return exactCased[lower];
    }

    // Check uppercase words
    if (uppercaseWords[lower] !== undefined) {
      return uppercaseWords[lower];
    }

    // Handle dotted initials like "F.P.J.", "R.L.", "J.B." (not already in exactCased)
    if (/^([a-z]\.){2,}$/i.test(word)) {
      return word.toUpperCase();
    }

    // Handle 2-letter words that were originally ALL CAPS (likely initials: EJ, JB, RB, etc.)
    // Skip common 2-letter names/words: Al, Bo, Jo, Ed, etc.
    const common2Letter = new Set(['al', 'bo', 'jo', 'ed', 'an', 'in', 'on', 'or', 'if', 'of', 'no', 'so', 'do', 'up']);
    if (word.length === 2 && /^[A-Z]{2}$/.test(word)) {
      return word; // Already uppercase, preserve
    }
    if (word.length === 2 && /^[a-z]{2}$/.test(word) && !common2Letter.has(lower) && !smallWords.has(lower)) {
      return word.toUpperCase();
    }

    // Check small words (only mid-title)
    if (!isFirst && !isLast && smallWords.has(lower)) {
      return lower;
    }

    // Handle O' prefix (e.g., o'connor -> O'Connor)
    if (lower.length > 2 && lower.startsWith("o'")) {
      return "O'" + lower.charAt(2).toUpperCase() + lower.slice(3);
    }

    // Handle Mc prefix (e.g., mcdonald -> McDonald)
    if (lower.length > 2 && lower.startsWith('mc')) {
      return 'Mc' + lower.charAt(2).toUpperCase() + lower.slice(3);
    }

    // Default: capitalize first letter
    return lower.charAt(0).toUpperCase() + lower.slice(1);
  };

  return tokens
    .map((token, i) => processWord(token, i === 0, i === tokens.length - 1))
    .join(' ');
}

/**
 * Removes citation markers like [1], [2][3], [12] from text.
 */
export function stripCitations(str: string): string {
  return str.replace(/\[\d+\]/g, '').replace(/\s{2,}/g, ' ').trim();
}

/**
 * Converts various date formats to ISO (YYYY-MM-DD, YYYY-MM, or YYYY).
 * Returns null if the input is empty or unparseable.
 */
export function normalizeDate(str: string): string | null {
  if (!str || !str.trim()) return null;

  const input = str.trim();

  const months: Record<string, string> = {
    'january': '01', 'jan': '01',
    'february': '02', 'feb': '02',
    'march': '03', 'mar': '03',
    'april': '04', 'apr': '04',
    'may': '05',
    'june': '06', 'jun': '06',
    'july': '07', 'jul': '07',
    'august': '08', 'aug': '08',
    'september': '09', 'sep': '09',
    'october': '10', 'oct': '10',
    'november': '11', 'nov': '11',
    'december': '12', 'dec': '12',
  };

  // Already ISO: YYYY-MM-DD
  if (/^\d{4}-\d{2}-\d{2}$/.test(input)) return input;

  // Already ISO: YYYY-MM
  if (/^\d{4}-\d{2}$/.test(input)) return input;

  // Already ISO or plain year: YYYY
  if (/^\d{4}$/.test(input)) return input;

  // "circa 1920", "c. 1920", "ca. 1920"
  const circaMatch = input.match(/^(?:circa|c\.|ca\.)\s*(\d{4})$/i);
  if (circaMatch) return circaMatch[1];

  // "1920s"
  const decadeMatch = input.match(/^(\d{4})s$/i);
  if (decadeMatch) return decadeMatch[1];

  // "1944-45" (year range, not full ISO)
  const rangeMatch = input.match(/^(\d{4})-\d{2,3}$/);
  if (rangeMatch) return rangeMatch[1];

  // "December 31, 1944" or "Dec 31, 1944"
  const usDateMatch = input.match(/^(\w+)\s+(\d{1,2}),?\s+(\d{4})$/i);
  if (usDateMatch) {
    const month = months[usDateMatch[1].toLowerCase()];
    if (month) {
      const day = usDateMatch[2].padStart(2, '0');
      return `${usDateMatch[3]}-${month}-${day}`;
    }
  }

  // "31 December 1944" (European format)
  const euDateMatch = input.match(/^(\d{1,2})\s+(\w+)\s+(\d{4})$/i);
  if (euDateMatch) {
    const month = months[euDateMatch[2].toLowerCase()];
    if (month) {
      const day = euDateMatch[1].padStart(2, '0');
      return `${euDateMatch[3]}-${month}-${day}`;
    }
  }

  // "December 1944" or "Dec 1944"
  const monthYearMatch = input.match(/^(\w+)\s+(\d{4})$/i);
  if (monthYearMatch) {
    const month = months[monthYearMatch[1].toLowerCase()];
    if (month) {
      return `${monthYearMatch[2]}-${month}`;
    }
  }

  return null;
}
