#!/bin/bash
# Unified Sync for Jazzapedia
# Single script for all sync operations (post-discovery and daily scheduled)
#
# Data Flow (Local as source of truth):
# 1. Syncs local content -> SQLite (for Docker runtime)
# 2. Syncs local content -> Obsidian vault (backup/personal use)
# 3. Syncs WWOZ archives -> content directory (requires Docker rebuild)
# 4. Rebuilds Docker if content changed, restarts if only runtime data changed
# 5. Syncs local content -> git push (for Cloudflare via GitHub Actions)
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
log "Dry run: $DRY_RUN | Skip git: $SKIP_GIT | Skip docker: $SKIP_DOCKER | Skip obsidian: $SKIP_OBSIDIAN"

CHANGES_MADE=false
WWOZ_CHANGES_MADE=false  # Track WWOZ-specific changes (requires Docker rebuild)

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
# STEP 3.5: Upload Portraits to R2 (direct, skip git)
# ============================================================

log_section "Step 3.5: Upload Portraits to R2"

if [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would upload portraits to R2"
else
  # Check for Cloudflare credentials
  if [ -z "$CLOUDFLARE_API_TOKEN" ] || [ -z "$CLOUDFLARE_ACCOUNT_ID" ]; then
    # Try to load from .env file
    if [ -f "$REPO_ROOT/.env" ]; then
      export $(grep -E '^CLOUDFLARE_(API_TOKEN|ACCOUNT_ID)=' "$REPO_ROOT/.env" | xargs)
    fi
  fi

  if [ -z "$CLOUDFLARE_API_TOKEN" ] || [ -z "$CLOUDFLARE_ACCOUNT_ID" ]; then
    log "WARNING: Cloudflare credentials not found, skipping R2 upload"
    log "  Set CLOUDFLARE_API_TOKEN and CLOUDFLARE_ACCOUNT_ID in environment or .env"
  else
    log "Uploading new portraits to R2..."
    cd "$WEB_DIR"
    PORTRAITS_DIR="$LOCAL_PORTRAITS" npx tsx "$SCRIPT_DIR/upload-portraits-r2.ts" 2>&1 | tee -a "$LOG_FILE"
    log "R2 upload complete"
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
  # Note: Portraits are uploaded directly to R2 in Step 3.5, not via git
  log "Syncing local artists to content-deploy..."
  rsync -av --delete --exclude='.*' \
    --exclude='*_20[0-9][0-9][0-9][0-9][0-9][0-9]_[0-9][0-9][0-9][0-9][0-9][0-9].md' \
    "$LOCAL_ARTISTS/" "$CONTENT_DEPLOY/artists/" >> "$LOG_FILE" 2>&1

  # Verify sync succeeded - content counts should match
  LOCAL_COUNT=$(find "$LOCAL_ARTISTS" -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')
  DEPLOY_COUNT=$(find "$CONTENT_DEPLOY/artists" -name "*.md" -type f 2>/dev/null | wc -l | tr -d ' ')
  if [ "$LOCAL_COUNT" != "$DEPLOY_COUNT" ]; then
    log "ERROR: Content sync mismatch! Local: $LOCAL_COUNT, Deploy: $DEPLOY_COUNT"
    log "This may indicate an rsync failure or permission issue."
  else
    log "Content sync verified: $LOCAL_COUNT artists in both directories"
  fi

  # Check for changes in content-deploy, WWOZ content, and artist slugs index
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
