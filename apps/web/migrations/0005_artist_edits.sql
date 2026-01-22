-- Artist edits audit log table for inline editing feature
-- Tracks all changes made to artist fields for accountability and potential rollback

CREATE TABLE IF NOT EXISTS artist_edits (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  artist_slug TEXT NOT NULL,
  field_name TEXT NOT NULL,
  old_value TEXT,
  new_value TEXT,
  editor_ip TEXT,
  user_agent TEXT,
  edited_at TEXT DEFAULT (datetime('now'))
);

-- Index for viewing edit history by artist
CREATE INDEX IF NOT EXISTS idx_artist_edits_slug ON artist_edits(artist_slug);

-- Index for viewing recent edits across all artists
CREATE INDEX IF NOT EXISTS idx_artist_edits_date ON artist_edits(edited_at DESC);
