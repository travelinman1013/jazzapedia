-- ============================================================
-- WWOZ Track Search Indexes
-- Optimize LIKE-based text search on wwoz_tracks
-- ============================================================

CREATE INDEX IF NOT EXISTS idx_wwoz_tracks_artist_title
  ON wwoz_tracks(artist COLLATE NOCASE, title COLLATE NOCASE);

CREATE INDEX IF NOT EXISTS idx_wwoz_tracks_album
  ON wwoz_tracks(album COLLATE NOCASE);
