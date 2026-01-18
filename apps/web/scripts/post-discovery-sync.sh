#!/bin/bash
set -e

# Add paths for launchd (which runs with minimal PATH)
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# Set directories
PROJECT_ROOT="${HOME}/Projects/jazzapedia"
WEB_DIR="${PROJECT_ROOT}/apps/web"
SCRIPT_DIR="${WEB_DIR}/scripts"
LOG_FILE="/tmp/jazzapedia-post-discovery-sync.log"

echo "$(date): Post-discovery sync triggered" >> "$LOG_FILE"

# 1. Run incremental SQLite sync (fast, ~2s)
echo "Running incremental SQLite sync..."
cd "$WEB_DIR"
npx tsx "$SCRIPT_DIR/sync-incremental-sqlite.ts" >> "$LOG_FILE" 2>&1

# 2. Restart web container to pick up new data
echo "Restarting web container..."
cd "$PROJECT_ROOT"
docker compose restart web >> "$LOG_FILE" 2>&1

# 3. Trigger GitHub Actions for D1/R2 sync
echo "Triggering GitHub Actions..."
cd "$PROJECT_ROOT"
gh workflow run sync-artists.yml >> "$LOG_FILE" 2>&1 || true

# 4. Clear the signal file
SIGNAL_FILE="${PROJECT_ROOT}/scraper-state/sync-requested"
rm -f "$SIGNAL_FILE"

echo "$(date): Post-discovery sync complete" >> "$LOG_FILE"
