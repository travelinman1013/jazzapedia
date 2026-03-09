-- ============================================================
-- Artist Audio Similarity Table
-- Pre-computed pairwise similarity scores based on audio features
-- ============================================================

CREATE TABLE IF NOT EXISTS artist_similarity (
  artist_slug TEXT NOT NULL,
  similar_slug TEXT NOT NULL,
  similarity_score REAL NOT NULL,
  computed_at TEXT NOT NULL DEFAULT (datetime('now')),
  PRIMARY KEY (artist_slug, similar_slug)
);

CREATE INDEX IF NOT EXISTS idx_similarity_artist
  ON artist_similarity(artist_slug, similarity_score DESC);

CREATE INDEX IF NOT EXISTS idx_similarity_similar
  ON artist_similarity(similar_slug);
