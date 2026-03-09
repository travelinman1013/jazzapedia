-- Indexes for unified search suggest endpoint
-- Speeds up LIKE queries on show_name and birth_place

CREATE INDEX IF NOT EXISTS idx_wwoz_tracks_show_name ON wwoz_tracks(show_name COLLATE NOCASE);
CREATE INDEX IF NOT EXISTS idx_artists_birth_place ON artists(birth_place COLLATE NOCASE);
