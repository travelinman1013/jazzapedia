-- WWOZ Intelligence Dashboard materialized tables
-- Pre-computed aggregations for the /wwoz/insights dashboard

-- Weekly genre play counts (for heatmap)
CREATE TABLE IF NOT EXISTS wwoz_genre_weekly (
  week_start TEXT NOT NULL,
  genre TEXT NOT NULL,
  play_count INTEGER NOT NULL DEFAULT 0,
  unique_artists INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (week_start, genre)
);

-- Host profile aggregations
CREATE TABLE IF NOT EXISTS wwoz_host_profiles (
  host TEXT PRIMARY KEY NOT NULL,
  total_tracks INTEGER NOT NULL DEFAULT 0,
  unique_artists INTEGER NOT NULL DEFAULT 0,
  match_rate REAL NOT NULL DEFAULT 0,
  top_genres_json TEXT,
  top_artists_json TEXT,
  show_names_json TEXT,
  first_seen TEXT,
  last_seen TEXT
);

-- Artist co-occurrence (same-day plays, filtered to significant pairs)
CREATE TABLE IF NOT EXISTS wwoz_artist_cooccurrence (
  artist_a TEXT NOT NULL,
  artist_b TEXT NOT NULL,
  cooccurrence_count INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (artist_a, artist_b)
);
CREATE INDEX IF NOT EXISTS idx_cooccurrence_count ON wwoz_artist_cooccurrence(cooccurrence_count DESC);

-- Artist first appearance tracking
CREATE TABLE IF NOT EXISTS wwoz_artist_first_seen (
  artist_normalized TEXT PRIMARY KEY NOT NULL,
  artist_display TEXT NOT NULL,
  first_date TEXT NOT NULL,
  total_plays INTEGER NOT NULL DEFAULT 1,
  artist_slug TEXT
);
CREATE INDEX IF NOT EXISTS idx_first_seen_date ON wwoz_artist_first_seen(first_date DESC);
