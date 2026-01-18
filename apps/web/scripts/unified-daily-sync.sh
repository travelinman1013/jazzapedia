#!/bin/bash
# Unified Sync for Jazzapedia
# Single script for all sync operations (post-discovery and daily scheduled)
#
# This script:
# 1. Syncs Obsidian vault -> SQLite (for Docker)
# 2. Restarts Docker container if changes detected
# 3. Syncs Obsidian vault -> content-deploy -> git push (for Cloudflare via GitHub Actions)
#
# Usage:
#   ./unified-daily-sync.sh                    # Full sync
#   ./unified-daily-sync.sh --dry-run          # Preview only
#   ./unified-daily-sync.sh --skip-git         # Skip git push (Docker only)
#   ./unified-daily-sync.sh --skip-docker      # Skip Docker restart
#   ./unified-daily-sync.sh --clear-signal     # Clear signal file after sync (for post-discovery)

set -e

# Add paths for launchd (which runs with minimal PATH)
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# ============================================================
# CONFIGURATION
# ============================================================

REPO_ROOT="/Users/maxwell/Projects/jazzapedia"
WEB_DIR="$REPO_ROOT/apps/web"
SCRIPT_DIR="$WEB_DIR/scripts"

# Vault paths
VAULT_ARTISTS="/Users/maxwell/LETSGO/MaxVault/01_Projects/PersonalArtistWiki/Artists"
VAULT_PORTRAITS="/Users/maxwell/LETSGO/MaxVault/03_Resources/source_material/ArtistPortraits"

# Output paths
SQLITE_DB="$REPO_ROOT/data/jazzapedia.db"
CONTENT_DEPLOY="$WEB_DIR/content-deploy"
PORTRAITS_DIR="$REPO_ROOT/portraits"
SIGNAL_FILE="$REPO_ROOT/scraper-state/sync-requested"

# Logging
LOG_DIR="$WEB_DIR/logs"
LOG_FILE="$LOG_DIR/sync-$(date '+%Y-%m-%d').log"

# Parse arguments
DRY_RUN=false
SKIP_GIT=false
SKIP_DOCKER=false
CLEAR_SIGNAL=false

for arg in "$@"; do
  case $arg in
    --dry-run) DRY_RUN=true ;;
    --skip-git) SKIP_GIT=true ;;
    --skip-docker) SKIP_DOCKER=true ;;
    --clear-signal) CLEAR_SIGNAL=true ;;
  esac
done

# ============================================================
# SETUP
# ============================================================

mkdir -p "$LOG_DIR"

log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

log_section() {
  log ""
  log "============================================================"
  log "$1"
  log "============================================================"
}

cd "$WEB_DIR"

log_section "Starting Jazzapedia Sync"
log "Dry run: $DRY_RUN | Skip git: $SKIP_GIT | Skip docker: $SKIP_DOCKER"

CHANGES_MADE=false

# ============================================================
# STEP 1: Vault -> SQLite (incremental)
# ============================================================

log_section "Step 1: Vault -> SQLite"

if [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would sync to SQLite"
  npx tsx "$SCRIPT_DIR/sync-incremental-sqlite.ts" --output "$SQLITE_DB" --dry-run 2>&1 | tee -a "$LOG_FILE"
else
  SYNC_OUTPUT=$(npx tsx "$SCRIPT_DIR/sync-incremental-sqlite.ts" --output "$SQLITE_DB" 2>&1 | tee -a "$LOG_FILE")

  if echo "$SYNC_OUTPUT" | grep -q "Successfully synced: [1-9]"; then
    CHANGES_MADE=true
    log "SQLite: Changes synced"
  else
    log "SQLite: No changes"
  fi
fi

# ============================================================
# STEP 2: Sync portraits for Docker
# ============================================================

log_section "Step 2: Portraits -> Docker"

if [ -d "$VAULT_PORTRAITS" ]; then
  BEFORE=$(find "$PORTRAITS_DIR" -type f 2>/dev/null | wc -l | tr -d ' ')

  if [ "$DRY_RUN" = true ]; then
    log "DRY RUN: Would rsync portraits"
  else
    mkdir -p "$PORTRAITS_DIR"
    rsync -av --ignore-existing \
      --include="*.jpg" --include="*.jpeg" --include="*.png" --include="*.webp" \
      --exclude="*" \
      "$VAULT_PORTRAITS/" "$PORTRAITS_DIR/" >> "$LOG_FILE" 2>&1

    AFTER=$(find "$PORTRAITS_DIR" -type f 2>/dev/null | wc -l | tr -d ' ')
    NEW=$((AFTER - BEFORE))
    log "Portraits: $NEW new (total: $AFTER)"
    [ "$NEW" -gt 0 ] && CHANGES_MADE=true
  fi
else
  log "WARNING: Vault portraits not found"
fi

# ============================================================
# STEP 3: Restart Docker (if changes)
# ============================================================

log_section "Step 3: Docker Restart"

if [ "$SKIP_DOCKER" = true ]; then
  log "SKIPPED (--skip-docker)"
elif [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would restart if changes (changes=$CHANGES_MADE)"
elif [ "$CHANGES_MADE" = true ]; then
  log "Restarting Docker..."
  cd "$REPO_ROOT"
  docker compose restart web 2>&1 | tee -a "$LOG_FILE" || log "WARNING: Docker restart failed"
else
  log "No changes, skip restart"
fi

# ============================================================
# STEP 4: Vault -> content-deploy -> Git push
# ============================================================

log_section "Step 4: Vault -> Git (for Cloudflare)"

if [ "$SKIP_GIT" = true ]; then
  log "SKIPPED (--skip-git)"
elif [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would sync to git"
else
  cd "$WEB_DIR"

  # Rsync vault to content-deploy (exclude timestamped backup files)
  log "Syncing vault to content-deploy..."
  rsync -av --delete --exclude='.*' \
    --exclude='*_20[0-9][0-9][0-9][0-9][0-9][0-9]_[0-9][0-9][0-9][0-9][0-9][0-9].md' \
    "$VAULT_ARTISTS/" "$CONTENT_DEPLOY/artists/" >> "$LOG_FILE" 2>&1
  rsync -av --delete --exclude='.*' \
    "$VAULT_PORTRAITS/" "$CONTENT_DEPLOY/portraits/" >> "$LOG_FILE" 2>&1

  # Commit and push if changes
  cd "$REPO_ROOT"
  if git diff --quiet "$CONTENT_DEPLOY" 2>/dev/null; then
    log "Git: No changes to commit"
  else
    ARTIST_COUNT=$(git status --porcelain "$CONTENT_DEPLOY/artists" 2>/dev/null | wc -l | tr -d ' ')
    log "Git: Committing $ARTIST_COUNT artist changes..."
    git add "$CONTENT_DEPLOY"
    git commit -m "Auto-sync: Update artists [$(date '+%Y-%m-%d %H:%M')]" >> "$LOG_FILE" 2>&1
    git push origin main >> "$LOG_FILE" 2>&1
    log "Git: Pushed to origin/main"

    # Trigger GitHub Actions
    log "Triggering GitHub Actions..."
    gh workflow run sync-artists.yml >> "$LOG_FILE" 2>&1 || log "WARNING: gh workflow trigger failed"
  fi
fi

# ============================================================
# STEP 5: Clear signal file (if requested)
# ============================================================

if [ "$CLEAR_SIGNAL" = true ] && [ -f "$SIGNAL_FILE" ]; then
  rm -f "$SIGNAL_FILE"
  log "Signal file cleared"
fi

# ============================================================
# DONE
# ============================================================

log_section "Sync Complete!"
log "Log: $LOG_FILE"
