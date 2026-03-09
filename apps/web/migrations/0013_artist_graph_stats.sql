-- ============================================================
-- Artist Graph Statistics Table
-- Pre-computed centrality metrics for the relationship graph
-- ============================================================

CREATE TABLE IF NOT EXISTS artist_graph_stats (
  slug TEXT PRIMARY KEY,
  degree INTEGER NOT NULL DEFAULT 0,
  in_degree INTEGER NOT NULL DEFAULT 0,
  out_degree INTEGER NOT NULL DEFAULT 0,
  betweenness REAL NOT NULL DEFAULT 0.0,
  clustering REAL NOT NULL DEFAULT 0.0,
  computed_at TEXT NOT NULL DEFAULT (datetime('now'))
);

CREATE INDEX IF NOT EXISTS idx_graph_stats_degree
  ON artist_graph_stats(degree DESC);

CREATE INDEX IF NOT EXISTS idx_graph_stats_betweenness
  ON artist_graph_stats(betweenness DESC);
