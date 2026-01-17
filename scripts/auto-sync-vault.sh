#!/bin/bash
# Auto-sync Obsidian vault to GitHub for Jazzapedia
# Runs before the daily GitHub Action to ensure new artists are pushed

set -e

# Configuration
PROJECT_DIR="/Users/maxwell/Projects/artistWiki_Web"
LOG_FILE="$PROJECT_DIR/logs/auto-sync.log"

# Ensure log directory exists
mkdir -p "$PROJECT_DIR/logs"

# Log function
log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

log "========== Starting auto-sync =========="

cd "$PROJECT_DIR"

# Sync content from Obsidian vault to content-deploy
log "Syncing from Obsidian vault..."
npm run sync:content-deploy 2>&1 | tee -a "$LOG_FILE"

# Check if there are any changes
if git diff --quiet content-deploy && git diff --cached --quiet content-deploy; then
  log "No changes detected. Nothing to push."
  log "========== Auto-sync complete =========="
  exit 0
fi

# Count new/modified files
ARTIST_CHANGES=$(git status --porcelain content-deploy/artists | wc -l | tr -d ' ')
PORTRAIT_CHANGES=$(git status --porcelain content-deploy/portraits | wc -l | tr -d ' ')

log "Changes detected: $ARTIST_CHANGES artist files, $PORTRAIT_CHANGES portrait files"

# Stage, commit, and push
log "Committing and pushing..."
git add content-deploy
git commit -m "Auto-sync: $ARTIST_CHANGES artists, $PORTRAIT_CHANGES portraits [$(date '+%Y-%m-%d')]"
git push origin master 2>&1 | tee -a "$LOG_FILE"

log "Successfully pushed changes to GitHub"
log "========== Auto-sync complete =========="
