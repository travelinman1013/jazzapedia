-- ============================================================
-- WWOZ DAYS TABLE (Day-level metadata for WWOZ archives)
-- ============================================================
-- Stores day-level data: playlist URL, aggregated stats
-- Related tracks are in wwoz_tracks table, linked by date

CREATE TABLE IF NOT EXISTS wwoz_days (
  date TEXT PRIMARY KEY NOT NULL,        -- ISO date format: YYYY-MM-DD
  playlist_url TEXT,                      -- Spotify playlist URL for this day
  stats_json TEXT DEFAULT '{}',           -- JSON: { totalTracks, successfullyFound, notFound, lowConfidence }
  source_url TEXT,                        -- Original WWOZ playlist URL
  created_at TEXT DEFAULT (datetime('now')),
  updated_at TEXT DEFAULT (datetime('now'))
);

-- Index for recent days listing (most common query)
CREATE INDEX IF NOT EXISTS idx_wwoz_days_date ON wwoz_days(date DESC);
