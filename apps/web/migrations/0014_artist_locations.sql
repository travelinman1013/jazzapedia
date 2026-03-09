-- ============================================================
-- Artist Locations Table
-- Geocoded geographic data for artist origin/birth place
-- Enables map visualization and geographic browsing
-- ============================================================

CREATE TABLE IF NOT EXISTS artist_locations (
  slug TEXT PRIMARY KEY,
  raw_location TEXT,
  city TEXT,
  region TEXT,
  country TEXT,
  lat REAL NOT NULL,
  lng REAL NOT NULL,
  geocode_source TEXT DEFAULT 'nominatim',
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);

CREATE INDEX IF NOT EXISTS idx_loc_city ON artist_locations(city);
CREATE INDEX IF NOT EXISTS idx_loc_country ON artist_locations(country);
CREATE INDEX IF NOT EXISTS idx_loc_coords ON artist_locations(lat, lng);
