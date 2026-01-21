#!/bin/bash
# Unified Sync for Jazzapedia
# Single script for all sync operations (post-discovery and daily scheduled)
#
# This script:
# 1. Syncs Obsidian vault -> SQLite (for Docker runtime)
# 2. Syncs WWOZ archives -> content directory (requires Docker rebuild)
# 3. Rebuilds Docker if WWOZ content changed, restarts if only runtime data changed
# 4. Syncs Obsidian vault -> content-deploy -> git push (for Cloudflare via GitHub Actions)
#
# Usage:
#   ./unified-daily-sync.sh                    # Full sync
#   ./unified-daily-sync.sh --dry-run          # Preview only
#   ./unified-daily-sync.sh --skip-git         # Skip git push (Docker only)
#   ./unified-daily-sync.sh --skip-docker      # Skip Docker rebuild/restart
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
WWOZ_CHANGES_MADE=false  # Track WWOZ-specific changes (requires Docker rebuild)

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
# STEP 1.5: Regenerate Artist Slug Index
# ============================================================

log_section "Step 1.5: Artist Slug Index"

SLUGS_FILE="$WEB_DIR/src/data/artist-slugs.json"
SLUGS_CHANGED=false

if [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would regenerate artist-slugs.json"
else
  # Capture before state
  BEFORE_HASH=""
  [ -f "$SLUGS_FILE" ] && BEFORE_HASH=$(md5 -q "$SLUGS_FILE" 2>/dev/null || md5sum "$SLUGS_FILE" | cut -d' ' -f1)

  # Regenerate the index from SQLite
  npx tsx "$SCRIPT_DIR/generate-artist-slugs.ts" 2>&1 | tee -a "$LOG_FILE"

  # Check if it changed
  AFTER_HASH=""
  [ -f "$SLUGS_FILE" ] && AFTER_HASH=$(md5 -q "$SLUGS_FILE" 2>/dev/null || md5sum "$SLUGS_FILE" | cut -d' ' -f1)

  if [ "$BEFORE_HASH" != "$AFTER_HASH" ]; then
    SLUGS_CHANGED=true
    CHANGES_MADE=true
    log "Artist slugs: Index updated"
  else
    log "Artist slugs: No changes"
  fi
fi

# ============================================================
# STEP 1.6: WWOZ Archives -> Content (incremental)
# ============================================================

log_section "Step 1.6: WWOZ Archives -> Content"

if [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would sync WWOZ archives"
  npx tsx "$SCRIPT_DIR/sync-wwoz.ts" --dry-run 2>&1 | tee -a "$LOG_FILE"
else
  WWOZ_OUTPUT=$(npx tsx "$SCRIPT_DIR/sync-wwoz.ts" 2>&1 | tee -a "$LOG_FILE")

  if echo "$WWOZ_OUTPUT" | grep -q "Synced:  [1-9]"; then
    CHANGES_MADE=true
    WWOZ_CHANGES_MADE=true  # WWOZ content requires Docker rebuild
    log "WWOZ: Changes synced"
  else
    log "WWOZ: No changes"
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
# STEP 3: Docker Rebuild/Restart (if changes)
# ============================================================

log_section "Step 3: Docker Update"

if [ "$SKIP_DOCKER" = true ]; then
  log "SKIPPED (--skip-docker)"
elif [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would rebuild if WWOZ/slugs changes (wwoz=$WWOZ_CHANGES_MADE, slugs=$SLUGS_CHANGED), restart if runtime changes (changes=$CHANGES_MADE)"
elif [ "$WWOZ_CHANGES_MADE" = true ] || [ "$SLUGS_CHANGED" = true ]; then
  # WWOZ content and artist-slugs.json are baked into Docker image at build time, so rebuild is required
  REBUILD_REASON=""
  [ "$WWOZ_CHANGES_MADE" = true ] && REBUILD_REASON="WWOZ content"
  [ "$SLUGS_CHANGED" = true ] && REBUILD_REASON="${REBUILD_REASON:+$REBUILD_REASON + }artist slugs index"
  log "Rebuilding Docker web container ($REBUILD_REASON changed)..."
  cd "$REPO_ROOT"
  if docker compose up -d --build web 2>&1 | tee -a "$LOG_FILE"; then
    log "Docker: Web container rebuilt successfully"
  else
    log "WARNING: Docker rebuild failed - check logs"
  fi
elif [ "$CHANGES_MADE" = true ]; then
  # SQLite/portrait changes are runtime volumes, just restart to pick them up
  log "Restarting Docker (runtime data changed, no rebuild needed)..."
  cd "$REPO_ROOT"
  docker compose restart web 2>&1 | tee -a "$LOG_FILE" || log "WARNING: Docker restart failed"
else
  log "No changes, skip Docker update"
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

  # Check for changes in content-deploy, WWOZ content, and artist slugs index
  cd "$REPO_ROOT"
  WWOZ_CONTENT="$WEB_DIR/src/content/wwoz"
  SLUGS_INDEX="$WEB_DIR/src/data/artist-slugs.json"

  CONTENT_CHANGED=false
  WWOZ_CHANGED=false
  SLUGS_INDEX_CHANGED=false

  # Check for changes (both tracked and untracked files)
  [ -n "$(git status --porcelain "$CONTENT_DEPLOY" 2>/dev/null)" ] && CONTENT_CHANGED=true
  [ -n "$(git status --porcelain "$WWOZ_CONTENT" 2>/dev/null)" ] && WWOZ_CHANGED=true
  [ -n "$(git status --porcelain "$SLUGS_INDEX" 2>/dev/null)" ] && SLUGS_INDEX_CHANGED=true

  if [ "$CONTENT_CHANGED" = false ] && [ "$WWOZ_CHANGED" = false ] && [ "$SLUGS_INDEX_CHANGED" = false ]; then
    log "Git: No changes to commit"
  else
    # Build commit message based on what changed
    COMMIT_PARTS=""
    if [ "$CONTENT_CHANGED" = true ]; then
      ARTIST_COUNT=$(git status --porcelain "$CONTENT_DEPLOY/artists" 2>/dev/null | wc -l | tr -d ' ')
      COMMIT_PARTS="artists"
      log "Git: $ARTIST_COUNT artist changes"
      git add "$CONTENT_DEPLOY"
    fi
    if [ "$WWOZ_CHANGED" = true ]; then
      WWOZ_COUNT=$(git status --porcelain "$WWOZ_CONTENT" 2>/dev/null | wc -l | tr -d ' ')
      [ -n "$COMMIT_PARTS" ] && COMMIT_PARTS="$COMMIT_PARTS, "
      COMMIT_PARTS="${COMMIT_PARTS}WWOZ archives"
      log "Git: $WWOZ_COUNT WWOZ archive changes"
      git add "$WWOZ_CONTENT"
    fi
    if [ "$SLUGS_INDEX_CHANGED" = true ]; then
      [ -n "$COMMIT_PARTS" ] && COMMIT_PARTS="$COMMIT_PARTS, "
      COMMIT_PARTS="${COMMIT_PARTS}artist slugs index"
      log "Git: Artist slugs index changed"
      git add "$SLUGS_INDEX"
    fi

    log "Git: Committing $COMMIT_PARTS..."
    git commit -m "Auto-sync: Update $COMMIT_PARTS [$(date '+%Y-%m-%d %H:%M')]" >> "$LOG_FILE" 2>&1
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
