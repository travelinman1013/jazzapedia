#!/usr/bin/env tsx
/**
 * Artist Location Geocoding
 *
 * Normalizes artist birth_place/origin strings and geocodes them via Nominatim.
 * Results are cached in geocode-cache.json so Nominatim is only called for new locations.
 *
 * Modes:
 *   npx tsx scripts/geocode-artists.ts          — cache-only (prebuild, no network)
 *   npx tsx scripts/geocode-artists.ts --fetch   — geocode uncached locations via Nominatim
 *   npx tsx scripts/geocode-artists.ts --export-sql — dump INSERT statements for D1
 *
 * Outputs:
 *   - SQLite: artist_locations table
 *   - Static JSON: src/data/map-data.json (for map page)
 */

import Database from 'better-sqlite3';
import fs from 'node:fs';
import path from 'node:path';

// ─── US State Abbreviations ─────────────────────────────────────────────────
const STATE_ABBREVS: Record<string, string> = {
  'AL': 'Alabama', 'AK': 'Alaska', 'AZ': 'Arizona', 'AR': 'Arkansas',
  'CA': 'California', 'CO': 'Colorado', 'CT': 'Connecticut', 'DE': 'Delaware',
  'FL': 'Florida', 'GA': 'Georgia', 'HI': 'Hawaii', 'ID': 'Idaho',
  'IL': 'Illinois', 'IN': 'Indiana', 'IA': 'Iowa', 'KS': 'Kansas',
  'KY': 'Kentucky', 'LA': 'Louisiana', 'ME': 'Maine', 'MD': 'Maryland',
  'MA': 'Massachusetts', 'MI': 'Michigan', 'MN': 'Minnesota', 'MS': 'Mississippi',
  'MO': 'Missouri', 'MT': 'Montana', 'NE': 'Nebraska', 'NV': 'Nevada',
  'NH': 'New Hampshire', 'NJ': 'New Jersey', 'NM': 'New Mexico', 'NY': 'New York',
  'NC': 'North Carolina', 'ND': 'North Dakota', 'OH': 'Ohio', 'OK': 'Oklahoma',
  'OR': 'Oregon', 'PA': 'Pennsylvania', 'RI': 'Rhode Island', 'SC': 'South Carolina',
  'SD': 'South Dakota', 'TN': 'Tennessee', 'TX': 'Texas', 'UT': 'Utah',
  'VT': 'Vermont', 'VA': 'Virginia', 'WA': 'Washington', 'WV': 'West Virginia',
  'WI': 'Wisconsin', 'WY': 'Wyoming', 'DC': 'District of Columbia',
};

const STATE_NAMES = new Set(Object.values(STATE_ABBREVS));

// ─── Country Synonyms ───────────────────────────────────────────────────────
const COUNTRY_SYNONYMS: Record<string, string> = {
  'usa': 'United States', 'us': 'United States', 'u.s.': 'United States',
  'u.s.a.': 'United States', 'united states of america': 'United States',
  'uk': 'United Kingdom', 'u.k.': 'United Kingdom',
  'england': 'United Kingdom', 'scotland': 'United Kingdom', 'wales': 'United Kingdom',
};

// ─── City Aliases ───────────────────────────────────────────────────────────
const CITY_ALIASES: Record<string, { city: string; region?: string; country: string }> = {
  'nyc': { city: 'New York', region: 'New York', country: 'United States' },
  'new york city': { city: 'New York', region: 'New York', country: 'United States' },
  'new york': { city: 'New York', region: 'New York', country: 'United States' },
  'brooklyn': { city: 'Brooklyn', region: 'New York', country: 'United States' },
  'harlem': { city: 'Harlem', region: 'New York', country: 'United States' },
  'the bronx': { city: 'The Bronx', region: 'New York', country: 'United States' },
  'queens': { city: 'Queens', region: 'New York', country: 'United States' },
  'los angeles': { city: 'Los Angeles', region: 'California', country: 'United States' },
  'chicago': { city: 'Chicago', region: 'Illinois', country: 'United States' },
  'philadelphia': { city: 'Philadelphia', region: 'Pennsylvania', country: 'United States' },
  'detroit': { city: 'Detroit', region: 'Michigan', country: 'United States' },
  'houston': { city: 'Houston', region: 'Texas', country: 'United States' },
  'memphis': { city: 'Memphis', region: 'Tennessee', country: 'United States' },
  'nashville': { city: 'Nashville', region: 'Tennessee', country: 'United States' },
  'atlanta': { city: 'Atlanta', region: 'Georgia', country: 'United States' },
  'pittsburgh': { city: 'Pittsburgh', region: 'Pennsylvania', country: 'United States' },
  'cleveland': { city: 'Cleveland', region: 'Ohio', country: 'United States' },
  'new orleans': { city: 'New Orleans', region: 'Louisiana', country: 'United States' },
  'st. louis': { city: 'St. Louis', region: 'Missouri', country: 'United States' },
  'st louis': { city: 'St. Louis', region: 'Missouri', country: 'United States' },
  'san francisco': { city: 'San Francisco', region: 'California', country: 'United States' },
  'san antonio': { city: 'San Antonio', region: 'Texas', country: 'United States' },
  'dallas': { city: 'Dallas', region: 'Texas', country: 'United States' },
  'oakland': { city: 'Oakland', region: 'California', country: 'United States' },
  'baltimore': { city: 'Baltimore', region: 'Maryland', country: 'United States' },
  'indianapolis': { city: 'Indianapolis', region: 'Indiana', country: 'United States' },
  'denver': { city: 'Denver', region: 'Colorado', country: 'United States' },
  'seattle': { city: 'Seattle', region: 'Washington', country: 'United States' },
  'portland': { city: 'Portland', region: 'Oregon', country: 'United States' },
  'minneapolis': { city: 'Minneapolis', region: 'Minnesota', country: 'United States' },
  'milwaukee': { city: 'Milwaukee', region: 'Wisconsin', country: 'United States' },
  'richmond': { city: 'Richmond', region: 'Virginia', country: 'United States' },
  'washington, d.c.': { city: 'Washington', region: 'District of Columbia', country: 'United States' },
  'washington d.c.': { city: 'Washington', region: 'District of Columbia', country: 'United States' },
  'washington': { city: 'Washington', region: 'District of Columbia', country: 'United States' },
  'london': { city: 'London', country: 'United Kingdom' },
  'toronto': { city: 'Toronto', region: 'Ontario', country: 'Canada' },
  'montreal': { city: 'Montreal', region: 'Quebec', country: 'Canada' },
  'kingston': { city: 'Kingston', country: 'Jamaica' },
  'havana': { city: 'Havana', country: 'Cuba' },
  'são paulo': { city: 'São Paulo', country: 'Brazil' },
  'sao paulo': { city: 'São Paulo', country: 'Brazil' },
  'rio de janeiro': { city: 'Rio de Janeiro', country: 'Brazil' },
  'paris': { city: 'Paris', country: 'France' },
  'tokyo': { city: 'Tokyo', country: 'Japan' },
  'lagos': { city: 'Lagos', country: 'Nigeria' },
  'lafayette': { city: 'Lafayette', region: 'Louisiana', country: 'United States' },
  'newark': { city: 'Newark', region: 'New Jersey', country: 'United States' },
  'manhattan': { city: 'Manhattan', region: 'New York', country: 'United States' },
  'boston': { city: 'Boston', region: 'Massachusetts', country: 'United States' },
  'la habana': { city: 'Havana', country: 'Cuba' },
  'kansas city': { city: 'Kansas City', region: 'Missouri', country: 'United States' },
  'greenville': { city: 'Greenville', region: 'Mississippi', country: 'United States' },
  'east harlem': { city: 'East Harlem', region: 'New York', country: 'United States' },
  'south bronx': { city: 'South Bronx', region: 'New York', country: 'United States' },
  'greenwich village': { city: 'Greenwich Village', region: 'New York', country: 'United States' },
  'staten island': { city: 'Staten Island', region: 'New York', country: 'United States' },
  'coney island': { city: 'Coney Island', region: 'New York', country: 'United States' },
  'long island': { city: 'Long Island', region: 'New York', country: 'United States' },
  'bedford–stuyvesant': { city: 'Bedford-Stuyvesant', region: 'New York', country: 'United States' },
  'miami': { city: 'Miami', region: 'Florida', country: 'United States' },
  'tampa': { city: 'Tampa', region: 'Florida', country: 'United States' },
  'jacksonville': { city: 'Jacksonville', region: 'Florida', country: 'United States' },
  'charlotte': { city: 'Charlotte', region: 'North Carolina', country: 'United States' },
  'gary': { city: 'Gary', region: 'Indiana', country: 'United States' },
  'austin': { city: 'Austin', region: 'Texas', country: 'United States' },
  'san diego': { city: 'San Diego', region: 'California', country: 'United States' },
  'compton': { city: 'Compton', region: 'California', country: 'United States' },
  'berkeley': { city: 'Berkeley', region: 'California', country: 'United States' },
  'cincinnati': { city: 'Cincinnati', region: 'Ohio', country: 'United States' },
  'dayton': { city: 'Dayton', region: 'Ohio', country: 'United States' },
  'savannah': { city: 'Savannah', region: 'Georgia', country: 'United States' },
  'montgomery': { city: 'Montgomery', region: 'Alabama', country: 'United States' },
  'little rock': { city: 'Little Rock', region: 'Arkansas', country: 'United States' },
  'baton rouge': { city: 'Baton Rouge', region: 'Louisiana', country: 'United States' },
  'lake charles': { city: 'Lake Charles', region: 'Louisiana', country: 'United States' },
  'kenner': { city: 'Kenner', region: 'Louisiana', country: 'United States' },
  'opelousas': { city: 'Opelousas', region: 'Louisiana', country: 'United States' },
  'houma': { city: 'Houma', region: 'Louisiana', country: 'United States' },
  'shreveport': { city: 'Shreveport', region: 'Louisiana', country: 'United States' },
  'dublin': { city: 'Dublin', country: 'Ireland' },
  'edinburgh': { city: 'Edinburgh', country: 'United Kingdom' },
  'glasgow': { city: 'Glasgow', country: 'United Kingdom' },
  'berlin': { city: 'Berlin', country: 'Germany' },
  'buenos aires': { city: 'Buenos Aires', country: 'Argentina' },
  'cape town': { city: 'Cape Town', country: 'South Africa' },
  'johannesburg': { city: 'Johannesburg', country: 'South Africa' },
  'accra': { city: 'Accra', country: 'Ghana' },
  'dakar': { city: 'Dakar', country: 'Senegal' },
  'mumbai': { city: 'Mumbai', country: 'India' },
  'santo domingo': { city: 'Santo Domingo', country: 'Dominican Republic' },
  'madrid': { city: 'Madrid', country: 'Spain' },
  'stockholm': { city: 'Stockholm', country: 'Sweden' },
  'sydney': { city: 'Sydney', country: 'Australia' },
  'melbourne': { city: 'Melbourne', country: 'Australia' },
  'moscow': { city: 'Moscow', country: 'Russia' },
};

// ─── Non-location values to skip ────────────────────────────────────────────
const SKIP_VALUES = new Set([
  'unknown', 'n/a', 'various', 'united states', 'usa', 'u.s.', 'u.s.a.',
  'united kingdom', 'brazil', 'france', 'nigeria', 'japan', 'jamaica',
  'cuba', 'south korea', 'netherlands', 'switzerland', 'italy', 'iran',
  'zaire', 'zambia', 'benin', 'ghana', 'malaysia', 'philippines',
  'new zealand', 'scotland', 'puerto rico', 'dominican republic',
  'trinidad and tobago', 'trinidad & tobago', 'trinidad',
]);

// ─── Interfaces ─────────────────────────────────────────────────────────────
interface NormalizedLocation {
  city: string;
  region: string | null;
  country: string;
  canonicalKey: string; // "city|country" for dedup/cache
}

interface GeocodeResult {
  lat: number;
  lng: number;
  displayName: string;
}

interface MapDataEntry {
  slug: string;
  title: string;
  lat: number;
  lng: number;
  city: string;
  country: string;
  genres: string;
  image_filename: string | null;
}

// ─── Normalization ──────────────────────────────────────────────────────────

function normalizeCountry(raw: string): string {
  const lower = raw.toLowerCase().trim();
  return COUNTRY_SYNONYMS[lower] || raw.trim();
}

function expandStateAbbrev(raw: string): string | null {
  const upper = raw.trim().toUpperCase();
  return STATE_ABBREVS[upper] || null;
}

function normalizeLocation(raw: string): NormalizedLocation | null {
  // Strip parenthetical annotations like "(birthplace)", "(raised)", "(current residence)"
  let trimmed = raw
    .replace(/\s*\([^)]*\)\s*/g, ' ')  // Remove (anything in parens)
    .replace(/\s*;.*$/, '')              // Remove everything after semicolon (multiple locations)
    .replace(/^[^:]*:\s*/, '')           // Remove "Artist Name: " prefix
    .trim();
  if (!trimmed) return null;

  const lower = trimmed.toLowerCase();

  // Skip non-location values
  if (SKIP_VALUES.has(lower)) return null;

  // Check city aliases first (handles single-word cities like "Chicago", "London")
  if (CITY_ALIASES[lower]) {
    const alias = CITY_ALIASES[lower];
    return {
      city: alias.city,
      region: alias.region || null,
      country: alias.country,
      canonicalKey: `${alias.city}|${alias.country}`,
    };
  }

  // Parse comma-separated parts
  const parts = trimmed.split(',').map(p => p.trim()).filter(Boolean);

  if (parts.length === 1) {
    // Single value — check if it's a US state
    const expanded = expandStateAbbrev(parts[0]);
    if (expanded || STATE_NAMES.has(parts[0])) {
      const state = expanded || parts[0];
      return {
        city: state,
        region: state,
        country: 'United States',
        canonicalKey: `${state}|United States`,
      };
    }

    // Skip long freeform text that's clearly not a location name
    if (trimmed.length > 60 || trimmed.includes('(') || trimmed.includes('not specified')
        || trimmed.includes('not documented') || trimmed.includes('Unable')
        || trimmed.includes('insufficient') || trimmed.includes('not clearly')
        || trimmed.includes('not reliably') || trimmed.includes('not provided')
        || trimmed.includes('inferred')) {
      return null;
    }

    // Bare city name — let Nominatim try to geocode it
    return {
      city: parts[0],
      region: null,
      country: '',
      canonicalKey: `${parts[0]}|`,
    };
  }

  if (parts.length === 2) {
    // Could be "City, State" or "City, Country"
    const second = parts[1];
    const expanded = expandStateAbbrev(second);
    if (expanded || STATE_NAMES.has(second)) {
      // US city + state
      const state = expanded || second;
      return {
        city: parts[0],
        region: state,
        country: 'United States',
        canonicalKey: `${parts[0]}|United States`,
      };
    }

    // Check if second part is a country
    const country = normalizeCountry(second);
    return {
      city: parts[0],
      region: null,
      country,
      canonicalKey: `${parts[0]}|${country}`,
    };
  }

  if (parts.length >= 3) {
    // "City, State/Region, Country"
    const country = normalizeCountry(parts[parts.length - 1]);
    const region = parts[1];
    const city = parts[0];

    // Handle "Washington, D.C., United States" special case
    if (lower.includes('washington') && lower.includes('d.c.')) {
      return {
        city: 'Washington',
        region: 'District of Columbia',
        country: 'United States',
        canonicalKey: 'Washington|United States',
      };
    }

    return {
      city,
      region,
      country,
      canonicalKey: `${city}|${country}`,
    };
  }

  return null;
}

// ─── Geocoding ──────────────────────────────────────────────────────────────

async function geocodeLocation(query: string): Promise<GeocodeResult | null> {
  const url = `https://nominatim.openstreetmap.org/search?q=${encodeURIComponent(query)}&format=json&limit=1`;
  try {
    const res = await fetch(url, {
      headers: { 'User-Agent': 'Jazzapedia/1.0 (https://jazzapedia.com)' },
    });
    if (!res.ok) return null;
    const data = await res.json();
    if (!data.length) return null;
    return {
      lat: parseFloat(data[0].lat),
      lng: parseFloat(data[0].lon),
      displayName: data[0].display_name,
    };
  } catch {
    return null;
  }
}

function buildGeocodeQuery(loc: NormalizedLocation): string {
  const parts = [loc.city];
  if (loc.region) parts.push(loc.region);
  parts.push(loc.country);
  return parts.join(', ');
}

function sleep(ms: number): Promise<void> {
  return new Promise(resolve => setTimeout(resolve, ms));
}

// ─── Main ───────────────────────────────────────────────────────────────────

async function main() {
  const args = process.argv.slice(2);
  const doFetch = args.includes('--fetch');
  const doExportSql = args.includes('--export-sql');

  const dbPath = process.env.DATABASE_PATH || path.join(process.cwd(), '../../data/jazzapedia.db');
  const cachePath = path.join(process.cwd(), 'src/data/geocode-cache.json');
  const overridesPath = path.join(process.cwd(), 'src/data/geocode-overrides.json');
  const mapDataPath = path.join(process.cwd(), 'src/data/map-data.json');

  if (!fs.existsSync(dbPath)) {
    console.warn(`[geocode] Database not found: ${dbPath} — writing empty map data`);
    fs.writeFileSync(mapDataPath, '[]');
    return;
  }

  const db = new Database(dbPath, { readonly: false });
  console.log(`[geocode] Connected to ${dbPath}`);

  // Ensure table exists
  const migrationPath = path.join(process.cwd(), 'migrations/0014_artist_locations.sql');
  if (fs.existsSync(migrationPath)) {
    const migration = fs.readFileSync(migrationPath, 'utf-8');
    db.exec(migration);
  }

  // Load cache and overrides
  let cache: Record<string, GeocodeResult> = {};
  if (fs.existsSync(cachePath)) {
    cache = JSON.parse(fs.readFileSync(cachePath, 'utf-8'));
  }

  let overrides: Record<string, { city: string; region?: string; country: string }> = {};
  if (fs.existsSync(overridesPath)) {
    overrides = JSON.parse(fs.readFileSync(overridesPath, 'utf-8'));
  }

  // Load all artists with location data
  const rows = db.prepare(`
    SELECT slug, title, birth_place, origin, genres, image_filename, artist_type
    FROM artists
    WHERE (birth_place IS NOT NULL AND birth_place <> '')
       OR (origin IS NOT NULL AND origin <> '')
  `).all() as {
    slug: string; title: string; birth_place: string | null;
    origin: string | null; genres: string; image_filename: string | null;
    artist_type: string | null;
  }[];

  console.log(`[geocode] Found ${rows.length} artists with location data`);

  // Normalize all locations
  let geocoded = 0, skipped = 0, failed = 0, cached = 0;
  const uncachedKeys = new Set<string>();
  const artistLocations: {
    slug: string; title: string; raw: string;
    norm: NormalizedLocation; genres: string; image_filename: string | null;
  }[] = [];

  for (const row of rows) {
    // Use birth_place for individuals, origin for bands, birth_place as fallback
    const raw = row.birth_place || row.origin || '';
    const lower = raw.toLowerCase().trim();

    // Check overrides first
    if (overrides[lower]) {
      const ov = overrides[lower];
      const norm: NormalizedLocation = {
        city: ov.city,
        region: ov.region || null,
        country: ov.country,
        canonicalKey: `${ov.city}|${ov.country}`,
      };
      artistLocations.push({ slug: row.slug, title: row.title, raw, norm, genres: row.genres, image_filename: row.image_filename });
      continue;
    }

    const norm = normalizeLocation(raw);
    if (!norm) {
      skipped++;
      continue;
    }

    artistLocations.push({ slug: row.slug, title: row.title, raw, norm, genres: row.genres, image_filename: row.image_filename });

    if (!cache[norm.canonicalKey]) {
      uncachedKeys.add(norm.canonicalKey);
    }
  }

  console.log(`[geocode] Normalized ${artistLocations.length} locations, skipped ${skipped}`);
  console.log(`[geocode] ${uncachedKeys.size} unique locations need geocoding, ${Object.keys(cache).length} in cache`);

  // Geocode uncached locations (only with --fetch)
  if (doFetch && uncachedKeys.size > 0) {
    console.log(`[geocode] Fetching ${uncachedKeys.size} locations from Nominatim (1/sec)...`);

    // Build a map from canonicalKey to NormalizedLocation for query building
    const keyToNorm = new Map<string, NormalizedLocation>();
    for (const al of artistLocations) {
      if (uncachedKeys.has(al.norm.canonicalKey)) {
        keyToNorm.set(al.norm.canonicalKey, al.norm);
      }
    }

    let fetched = 0;
    for (const key of uncachedKeys) {
      const norm = keyToNorm.get(key)!;
      const query = buildGeocodeQuery(norm);
      const result = await geocodeLocation(query);
      fetched++;

      if (result) {
        cache[key] = result;
        geocoded++;
        if (fetched % 20 === 0) {
          console.log(`[geocode] Progress: ${fetched}/${uncachedKeys.size} (${geocoded} success, ${failed} failed)`);
        }
      } else {
        failed++;
        console.warn(`[geocode] FAILED: "${query}" (key: ${key})`);
      }

      // Rate limit: 1 req/sec
      await sleep(1100);
    }

    // Save updated cache
    fs.writeFileSync(cachePath, JSON.stringify(cache, null, 2));
    console.log(`[geocode] Updated cache: ${Object.keys(cache).length} entries`);
  } else if (uncachedKeys.size > 0) {
    console.log(`[geocode] ${uncachedKeys.size} locations uncached (run with --fetch to geocode)`);
  }

  // Write to artist_locations table
  db.prepare('DELETE FROM artist_locations').run();

  const insert = db.prepare(`
    INSERT OR IGNORE INTO artist_locations (slug, raw_location, city, region, country, lat, lng, geocode_source)
    VALUES (?, ?, ?, ?, ?, ?, ?, 'nominatim')
  `);

  const insertBatch = db.transaction((entries: typeof artistLocations) => {
    for (const entry of entries) {
      const geo = cache[entry.norm.canonicalKey];
      if (!geo) continue;
      insert.run(
        entry.slug,
        entry.raw,
        entry.norm.city,
        entry.norm.region,
        entry.norm.country,
        geo.lat,
        geo.lng,
      );
      cached++;
    }
  });

  insertBatch(artistLocations);
  console.log(`[geocode] Inserted ${cached} rows into artist_locations`);

  // Generate map-data.json
  const mapData: MapDataEntry[] = db.prepare(`
    SELECT al.slug, a.title, al.lat, al.lng, al.city, al.country, a.genres, a.image_filename
    FROM artist_locations al
    JOIN artists a ON a.slug = al.slug
    ORDER BY a.title
  `).all() as MapDataEntry[];

  fs.writeFileSync(mapDataPath, JSON.stringify(mapData));
  console.log(`[geocode] Wrote ${mapData.length} entries to map-data.json (${(fs.statSync(mapDataPath).size / 1024).toFixed(0)}KB)`);

  // Export SQL if requested
  if (doExportSql) {
    const sqlPath = path.join(process.cwd(), 'artist_locations.sql');
    const allRows = db.prepare('SELECT * FROM artist_locations').all() as {
      slug: string; raw_location: string; city: string; region: string | null;
      country: string; lat: number; lng: number; geocode_source: string; created_at: string;
    }[];
    const lines = [
      '-- Auto-generated by geocode-artists.ts --export-sql',
      'DELETE FROM artist_locations;',
      ...allRows.map(r =>
        `INSERT INTO artist_locations (slug, raw_location, city, region, country, lat, lng, geocode_source) VALUES (${escape(r.slug)}, ${escape(r.raw_location)}, ${escape(r.city)}, ${escape(r.region)}, ${escape(r.country)}, ${r.lat}, ${r.lng}, ${escape(r.geocode_source)});`
      ),
    ];
    fs.writeFileSync(sqlPath, lines.join('\n'));
    console.log(`[geocode] Exported ${allRows.length} rows to ${sqlPath}`);
  }

  // Summary
  console.log(`\n[geocode] Summary:`);
  console.log(`  Artists with location data: ${rows.length}`);
  console.log(`  Normalized: ${artistLocations.length}`);
  console.log(`  Skipped (non-geocodable): ${skipped}`);
  console.log(`  In database: ${cached}`);
  if (doFetch) {
    console.log(`  Newly geocoded: ${geocoded}`);
    console.log(`  Failed: ${failed}`);
  }

  db.close();
}

function escape(val: string | null): string {
  if (val === null || val === undefined) return 'NULL';
  return `'${val.replace(/'/g, "''")}'`;
}

main().catch(err => {
  console.error('[geocode] Fatal error:', err);
  process.exit(1);
});
