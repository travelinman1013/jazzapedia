#!/bin/bash
# Unified Sync for Jazzapedia
# Single script for all sync operations (post-discovery and daily scheduled)
#
# Data Flow (Local as source of truth):
# 1. Syncs local content -> SQLite (for Docker runtime)
# 1.5. Syncs WWOZ archives -> SQLite (database-driven, no rebuild needed)
# 2. Syncs local content -> Obsidian vault (backup/personal use)
# 3. Restarts Docker if runtime data changed (SQLite is a volume mount)
# 3.5. Uploads portraits to R2 (direct, no git)
# 4. Syncs local content -> git push (for Cloudflare via GitHub Actions)
#
# Usage:
#   ./unified-daily-sync.sh                    # Full sync
#   ./unified-daily-sync.sh --dry-run          # Preview only
#   ./unified-daily-sync.sh --skip-git         # Skip git push (Docker only)
#   ./unified-daily-sync.sh --skip-docker      # Skip Docker rebuild/restart
#   ./unified-daily-sync.sh --skip-obsidian    # Skip Obsidian vault sync
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

# Local directories (primary storage - source of truth)
LOCAL_ARTISTS="$REPO_ROOT/content/artists"
LOCAL_PORTRAITS="$REPO_ROOT/portraits"

# Obsidian vault paths (sync destination for backup/personal use)
OBSIDIAN_ARTISTS="${OBSIDIAN_ARTISTS_DIR:-/Users/maxwell/LETSGO/MaxVault/01_Projects/PersonalArtistWiki/Artists}"
OBSIDIAN_PORTRAITS="${OBSIDIAN_PORTRAITS_DIR:-/Users/maxwell/LETSGO/MaxVault/03_Resources/source_material/ArtistPortraits}"

# Output paths
SQLITE_DB="$REPO_ROOT/data/jazzapedia.db"
CONTENT_DEPLOY="$WEB_DIR/content-deploy"
SIGNAL_FILE="$REPO_ROOT/scraper-state/sync-requested"

# Logging
LOG_DIR="$WEB_DIR/logs"
LOG_FILE="$LOG_DIR/sync-$(date '+%Y-%m-%d').log"

# Parse arguments
DRY_RUN=false
SKIP_GIT=false
SKIP_DOCKER=false
SKIP_OBSIDIAN=false
CLEAR_SIGNAL=false

for arg in "$@"; do
  case $arg in
    --dry-run) DRY_RUN=true ;;
    --skip-git) SKIP_GIT=true ;;
    --skip-docker) SKIP_DOCKER=true ;;
    --skip-obsidian) SKIP_OBSIDIAN=true ;;
    --clear-signal) CLEAR_SIGNAL=true ;;
  esac
done

# ============================================================
# SETUP
# ============================================================

mkdir -p "$LOG_DIR"

# Lock file to prevent concurrent runs
LOCK_FILE="$REPO_ROOT/scraper-state/.sync-lock"

log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

log_section() {
  log ""
  log "============================================================"
  log "$1"
  log "============================================================"
}

# Check for existing lock (prevent concurrent runs)
if [ -f "$LOCK_FILE" ]; then
  LOCK_PID=$(cat "$LOCK_FILE" 2>/dev/null)
  if [ -n "$LOCK_PID" ] && kill -0 "$LOCK_PID" 2>/dev/null; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Sync already in progress (PID: $LOCK_PID), exiting" >> "$LOG_FILE"
    exit 0
  fi
  # Stale lock file, remove it
  rm -f "$LOCK_FILE"
fi

# Create lock file with our PID
echo $$ > "$LOCK_FILE"
trap "rm -f '$LOCK_FILE'" EXIT

cd "$WEB_DIR"

log_section "Starting Jazzapedia Sync"
log "Dry run: $DRY_RUN | Skip git: $SKIP_GIT | Skip docker: $SKIP_DOCKER | Skip obsidian: $SKIP_OBSIDIAN"

CHANGES_MADE=false

# ============================================================
# STEP 1: Local Content -> SQLite (incremental)
# ============================================================

log_section "Step 1: Local Content -> SQLite"

if [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would sync to SQLite"
  ARTISTS_DIR="$LOCAL_ARTISTS" PORTRAITS_DIR="$LOCAL_PORTRAITS" \
    npx tsx "$SCRIPT_DIR/sync-incremental-sqlite.ts" --output "$SQLITE_DB" --dry-run 2>&1 | tee -a "$LOG_FILE"
else
  SYNC_OUTPUT=$(ARTISTS_DIR="$LOCAL_ARTISTS" PORTRAITS_DIR="$LOCAL_PORTRAITS" \
    npx tsx "$SCRIPT_DIR/sync-incremental-sqlite.ts" --output "$SQLITE_DB" 2>&1 | tee -a "$LOG_FILE")

  if echo "$SYNC_OUTPUT" | grep -q "Successfully synced: [1-9]"; then
    CHANGES_MADE=true
    log "SQLite: Changes synced"
  else
    log "SQLite: No changes"
  fi
fi

# ============================================================
# STEP 1.5: WWOZ Archives -> Database (incremental)
# ============================================================
# NOTE: Artist slug index generation removed - WWOZ pages now use database
# lookup for artist linking instead of static JSON file.

log_section "Step 1.5: WWOZ Archives -> Database"

if [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would sync WWOZ archives to database"
  npx tsx "$SCRIPT_DIR/sync-wwoz-db.ts" --sqlite --dry-run 2>&1 | tee -a "$LOG_FILE"
else
  WWOZ_OUTPUT=$(npx tsx "$SCRIPT_DIR/sync-wwoz-db.ts" --sqlite 2>&1 | tee -a "$LOG_FILE")

  if echo "$WWOZ_OUTPUT" | grep -q "Days synced: [1-9]"; then
    CHANGES_MADE=true
    log "WWOZ: Changes synced to database"
  else
    log "WWOZ: No changes"
  fi
fi

# ============================================================
# STEP 1.6: Backfill WWOZ Playlist URLs from Spotify
# ============================================================

log_section "Step 1.6: Backfill WWOZ Playlist URLs"

if [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would backfill playlist URLs from Spotify"
else
  # Use Docker to run the scraper's export command (has Spotify credentials)
  PLAYLIST_SQL_FILE="/tmp/wwoz-playlist-urls-$$.sql"

  log "Fetching playlist URLs from Spotify via scraper..."
  if docker compose exec -T scraper node dist/index.js --export-playlist-urls 2>/dev/null | grep "^UPDATE" > "$PLAYLIST_SQL_FILE"; then
    PLAYLIST_COUNT=$(wc -l < "$PLAYLIST_SQL_FILE" | tr -d ' ')
    if [ "$PLAYLIST_COUNT" -gt 0 ]; then
      log "Found $PLAYLIST_COUNT playlist URLs, applying to SQLite..."
      sqlite3 "$SQLITE_DB" < "$PLAYLIST_SQL_FILE" >> "$LOG_FILE" 2>&1
      log "Playlist URLs: Updated"
    else
      log "Playlist URLs: No playlists found"
    fi
  else
    log "WARNING: Could not fetch playlist URLs (scraper not running or Spotify issue)"
  fi

  rm -f "$PLAYLIST_SQL_FILE"
fi

# ============================================================
# STEP 2: Local -> Obsidian Vault (backup sync)
# ============================================================

log_section "Step 2: Local -> Obsidian Vault"

if [ "$SKIP_OBSIDIAN" = true ]; then
  log "SKIPPED (--skip-obsidian)"
elif [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would sync to Obsidian vault"
  [ -d "$OBSIDIAN_ARTISTS" ] && log "  Artists: $LOCAL_ARTISTS -> $OBSIDIAN_ARTISTS"
  [ -d "$OBSIDIAN_PORTRAITS" ] && log "  Portraits: $LOCAL_PORTRAITS -> $OBSIDIAN_PORTRAITS"
else
  # Sync artists to Obsidian vault
  if [ -d "$OBSIDIAN_ARTISTS" ]; then
    BEFORE=$(find "$OBSIDIAN_ARTISTS" -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')
    rsync -av --delete --exclude='.*' \
      --exclude='*_20[0-9][0-9][0-9][0-9][0-9][0-9]_[0-9][0-9][0-9][0-9][0-9][0-9].md' \
      "$LOCAL_ARTISTS/" "$OBSIDIAN_ARTISTS/" >> "$LOG_FILE" 2>&1
    AFTER=$(find "$OBSIDIAN_ARTISTS" -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')
    log "Obsidian artists: synced (total: $AFTER)"
  else
    log "WARNING: Obsidian artists directory not found: $OBSIDIAN_ARTISTS"
  fi

  # Sync portraits to Obsidian vault (new files only, preserve existing)
  if [ -d "$OBSIDIAN_PORTRAITS" ]; then
    BEFORE=$(find "$OBSIDIAN_PORTRAITS" -type f 2>/dev/null | wc -l | tr -d ' ')
    rsync -av --ignore-existing \
      --include="*.jpg" --include="*.jpeg" --include="*.png" --include="*.webp" \
      --exclude="*" \
      "$LOCAL_PORTRAITS/" "$OBSIDIAN_PORTRAITS/" >> "$LOG_FILE" 2>&1
    AFTER=$(find "$OBSIDIAN_PORTRAITS" -type f 2>/dev/null | wc -l | tr -d ' ')
    NEW=$((AFTER - BEFORE))
    log "Obsidian portraits: $NEW new (total: $AFTER)"
  else
    log "WARNING: Obsidian portraits directory not found: $OBSIDIAN_PORTRAITS"
  fi
fi

# ============================================================
# STEP 3: Docker Rebuild/Restart (if changes)
# ============================================================

log_section "Step 3: Docker Update"

# NOTE: WWOZ content and artist slugs are now served from database (runtime volumes),
# so no Docker rebuild is needed for content changes - just restart to pick up any
# potential SQLite changes.

if [ "$SKIP_DOCKER" = true ]; then
  log "SKIPPED (--skip-docker)"
elif [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would restart if runtime changes (changes=$CHANGES_MADE)"
elif [ "$CHANGES_MADE" = true ]; then
  # All data changes are now in SQLite (runtime volume), just restart to pick them up
  log "Restarting Docker (runtime data changed)..."
  cd "$REPO_ROOT"
  docker compose restart web 2>&1 | tee -a "$LOG_FILE" || log "WARNING: Docker restart failed"
else
  log "No changes, skip Docker update"
fi

# ============================================================
# STEP 3.5: Upload Portraits to R2 (direct, skip git)
# ============================================================

log_section "Step 3.5: Upload Portraits to R2"

if [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would upload portraits to R2"
else
  # Wrangler uses OAuth auth (via `wrangler login`) - no env vars needed
  log "Uploading new portraits to R2..."
  cd "$WEB_DIR"
  if PORTRAITS_DIR="$LOCAL_PORTRAITS" npx tsx "$SCRIPT_DIR/upload-portraits-r2.ts" 2>&1 | tee -a "$LOG_FILE"; then
    log "R2 upload complete"
  else
    log "WARNING: R2 upload failed - check if wrangler is logged in (run: npx wrangler login)"
  fi
fi

# ============================================================
# STEP 4: Local Content -> Git push (for Cloudflare)
# ============================================================

log_section "Step 4: Local Content -> Git (for Cloudflare)"

if [ "$SKIP_GIT" = true ]; then
  log "SKIPPED (--skip-git)"
elif [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would sync to git"
else
  cd "$REPO_ROOT"

  # Ensure we're on main branch for Cloudflare deployment
  CURRENT_BRANCH=$(git branch --show-current)
  SWITCHED_BRANCH=false
  if [ "$CURRENT_BRANCH" != "main" ]; then
    log "Git: Currently on '$CURRENT_BRANCH', switching to main..."
    # Stash any uncommitted changes in working directory
    if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
      git stash push -m "sync-script: auto-stash before branch switch" >> "$LOG_FILE" 2>&1
      STASHED=true
    else
      STASHED=false
    fi
    git checkout main >> "$LOG_FILE" 2>&1
    SWITCHED_BRANCH=true
  fi

  # Sync local artist content to content-deploy for Cloudflare
  # (content-deploy is committed to git for the deployment pipeline)
  log "Syncing local artists to content-deploy..."
  rsync -av --delete --exclude='.*' \
    --exclude='*_20[0-9][0-9][0-9][0-9][0-9][0-9]_[0-9][0-9][0-9][0-9][0-9][0-9].md' \
    "$LOCAL_ARTISTS/" "$CONTENT_DEPLOY/artists/" >> "$LOG_FILE" 2>&1

  # Sync portraits to content-deploy for GitHub Actions to find during D1 sync
  # (portraits are also uploaded directly to R2 in Step 3.5)
  log "Syncing portraits to content-deploy..."
  rsync -av --ignore-existing \
    --include="*.jpg" --include="*.jpeg" --include="*.png" --include="*.webp" \
    --exclude="*" \
    "$LOCAL_PORTRAITS/" "$CONTENT_DEPLOY/portraits/" >> "$LOG_FILE" 2>&1

  # Verify sync succeeded - content counts should match
  LOCAL_COUNT=$(find "$LOCAL_ARTISTS" -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')
  DEPLOY_COUNT=$(find "$CONTENT_DEPLOY/artists" -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')
  if [ "$LOCAL_COUNT" != "$DEPLOY_COUNT" ]; then
    log "ERROR: Content sync mismatch! Local: $LOCAL_COUNT, Deploy: $DEPLOY_COUNT"
    log "This may indicate an rsync failure or permission issue."
  else
    log "Content sync verified: $LOCAL_COUNT artists in both directories"
  fi

  # Check for changes in content-deploy only
  # NOTE: WWOZ content and artist-slugs.json are no longer tracked in git
  # (served from database instead), so we only track artist/portrait content

  CONTENT_CHANGED=false

  # Check for changes (both tracked and untracked files)
  [ -n "$(git status --porcelain "$CONTENT_DEPLOY" 2>/dev/null)" ] && CONTENT_CHANGED=true

  if [ "$CONTENT_CHANGED" = false ]; then
    log "Git: No changes to commit"
  else
    # Build commit message based on what changed
    ARTIST_COUNT=$(git status --porcelain "$CONTENT_DEPLOY/artists" 2>/dev/null | wc -l | tr -d ' ')
    PORTRAIT_COUNT=$(git status --porcelain "$CONTENT_DEPLOY/portraits" 2>/dev/null | wc -l | tr -d ' ')

    COMMIT_PARTS="artists"
    log "Git: $ARTIST_COUNT artist changes, $PORTRAIT_COUNT portrait changes"
    git add "$CONTENT_DEPLOY"

    log "Git: Committing $COMMIT_PARTS..."
    git commit -m "Auto-sync: Update $COMMIT_PARTS [$(date '+%Y-%m-%d %H:%M')]" >> "$LOG_FILE" 2>&1
    git push origin main >> "$LOG_FILE" 2>&1
    log "Git: Pushed to origin/main (sync-artists.yml will trigger automatically)"
  fi

  # Switch back to original branch if we switched
  if [ "$SWITCHED_BRANCH" = true ]; then
    log "Git: Switching back to '$CURRENT_BRANCH'..."
    git checkout "$CURRENT_BRANCH" >> "$LOG_FILE" 2>&1
    if [ "$STASHED" = true ]; then
      git stash pop >> "$LOG_FILE" 2>&1 || log "WARNING: Failed to pop stash"
    fi
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
