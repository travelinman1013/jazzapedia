#!/bin/bash
set -e

# Add paths for launchd (which runs with minimal PATH)
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# Set directories
PROJECT_ROOT="${HOME}/Projects/jazzapedia"
WEB_DIR="${PROJECT_ROOT}/apps/web"
SCRIPT_DIR="${WEB_DIR}/scripts"
VAULT_ARTISTS="/Users/maxwell/LETSGO/MaxVault/01_Projects/PersonalArtistWiki/Artists"
VAULT_PORTRAITS="/Users/maxwell/LETSGO/MaxVault/03_Resources/source_material/ArtistPortraits"
CONTENT_DEPLOY="${WEB_DIR}/content-deploy"
LOG_FILE="/tmp/jazzapedia-post-discovery-sync.log"

echo "$(date): Post-discovery sync triggered" >> "$LOG_FILE"

# 1. Run incremental SQLite sync (fast, ~2s)
echo "Running incremental SQLite sync..." >> "$LOG_FILE"
cd "$WEB_DIR"
npx tsx "$SCRIPT_DIR/sync-incremental-sqlite.ts" --output "$PROJECT_ROOT/data/jazzapedia.db" >> "$LOG_FILE" 2>&1

# 2. Restart web container to pick up new data
echo "Restarting web container..." >> "$LOG_FILE"
cd "$PROJECT_ROOT"
docker compose restart web >> "$LOG_FILE" 2>&1

# 3. Sync vault to content-deploy for GitHub Actions
echo "Syncing vault to content-deploy..." >> "$LOG_FILE"
rsync -av --delete --exclude='.*' --exclude='*_20[0-9][0-9][0-9][0-9][0-9][0-9]_[0-9][0-9][0-9][0-9][0-9][0-9].md' \
    "$VAULT_ARTISTS/" "$CONTENT_DEPLOY/artists/" >> "$LOG_FILE" 2>&1
rsync -av --delete --exclude='.*' \
    "$VAULT_PORTRAITS/" "$CONTENT_DEPLOY/portraits/" >> "$LOG_FILE" 2>&1

# 4. Commit and push content-deploy changes
echo "Committing content-deploy changes..." >> "$LOG_FILE"
cd "$PROJECT_ROOT"
if git diff --quiet "$CONTENT_DEPLOY" 2>/dev/null; then
    echo "No changes to commit" >> "$LOG_FILE"
else
    git add "$CONTENT_DEPLOY"
    git commit -m "Auto-sync: Add new artists from discovery pipeline" >> "$LOG_FILE" 2>&1
    git push origin main >> "$LOG_FILE" 2>&1
fi

# 5. Trigger GitHub Actions for D1/R2 sync
echo "Triggering GitHub Actions..." >> "$LOG_FILE"
gh workflow run sync-artists.yml >> "$LOG_FILE" 2>&1 || true

# 6. Clear the signal file
SIGNAL_FILE="${PROJECT_ROOT}/scraper-state/sync-requested"
rm -f "$SIGNAL_FILE"

echo "$(date): Post-discovery sync complete" >> "$LOG_FILE"
