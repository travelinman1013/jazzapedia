#!/bin/bash
# Unified Daily Sync for Jazzapedia
# Master orchestrator for daily sync to both Docker (SQLite) and Cloudflare (D1/R2)
#
# This script:
# 1. Syncs Obsidian vault -> content-deploy -> git push (triggers GitHub Actions for D1)
# 2. Syncs Obsidian vault -> SQLite (direct, incremental)
# 3. Syncs portraits from vault -> ./portraits/ (for Docker)
# 4. Restarts Docker container if SQLite was modified
#
# Usage:
#   ./scripts/unified-daily-sync.sh              # Full sync
#   ./scripts/unified-daily-sync.sh --dry-run    # Preview only
#   ./scripts/unified-daily-sync.sh --skip-git   # Skip git push (SQLite only)
#   ./scripts/unified-daily-sync.sh --skip-docker # Skip Docker restart

set -e

# ============================================================
# CONFIGURATION
# ============================================================

PROJECT_DIR="/Users/maxwell/Projects/artistWiki_Web"
VAULT_PORTRAITS="/Users/maxwell/LETSGO/MaxVault/03_Resources/source_material/ArtistPortraits"
LOG_DIR="$PROJECT_DIR/logs"
LOG_FILE="$LOG_DIR/unified-sync-$(date '+%Y-%m-%d').log"

# Parse arguments
DRY_RUN=false
SKIP_GIT=false
SKIP_DOCKER=false

for arg in "$@"; do
  case $arg in
    --dry-run)
      DRY_RUN=true
      shift
      ;;
    --skip-git)
      SKIP_GIT=true
      shift
      ;;
    --skip-docker)
      SKIP_DOCKER=true
      shift
      ;;
  esac
done

# ============================================================
# SETUP
# ============================================================

# Ensure log directory exists
mkdir -p "$LOG_DIR"

# Log function (both stdout and file)
log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

log_section() {
  log ""
  log "============================================================"
  log "$1"
  log "============================================================"
}

# Ensure we're in the project directory
cd "$PROJECT_DIR"

log_section "Starting Unified Daily Sync"
log "Project: $PROJECT_DIR"
log "Dry run: $DRY_RUN"
log "Skip git: $SKIP_GIT"
log "Skip docker: $SKIP_DOCKER"

# Track if SQLite was modified (for Docker restart decision)
SQLITE_MODIFIED=false

# ============================================================
# STEP 1: Sync vault -> content-deploy -> git push
# ============================================================

if [ "$SKIP_GIT" = false ]; then
  log_section "Step 1: Vault -> Git (triggers GitHub Actions for D1)"

  if [ "$DRY_RUN" = true ]; then
    log "DRY RUN: Would run auto-sync-vault.sh"
  else
    # Run the existing auto-sync-vault script
    if [ -f "$PROJECT_DIR/scripts/auto-sync-vault.sh" ]; then
      log "Running auto-sync-vault.sh..."
      "$PROJECT_DIR/scripts/auto-sync-vault.sh" 2>&1 | tee -a "$LOG_FILE" || {
        log "WARNING: auto-sync-vault.sh failed, continuing..."
      }
    else
      log "WARNING: auto-sync-vault.sh not found, skipping git sync"
    fi
  fi
else
  log_section "Step 1: SKIPPED (--skip-git flag)"
fi

# ============================================================
# STEP 2: Vault -> SQLite (incremental)
# ============================================================

log_section "Step 2: Vault -> SQLite (incremental sync)"

if [ "$DRY_RUN" = true ]; then
  log "Running incremental SQLite sync (dry-run)..."
  npx tsx "$PROJECT_DIR/scripts/sync-incremental-sqlite.ts" --dry-run 2>&1 | tee -a "$LOG_FILE"
else
  log "Running incremental SQLite sync..."

  # Capture output to check if changes were made
  SYNC_OUTPUT=$(npx tsx "$PROJECT_DIR/scripts/sync-incremental-sqlite.ts" 2>&1 | tee -a "$LOG_FILE")

  # Check if any changes were synced
  if echo "$SYNC_OUTPUT" | grep -q "Successfully synced: [1-9]"; then
    SQLITE_MODIFIED=true
    log "SQLite was modified"
  elif echo "$SYNC_OUTPUT" | grep -q "No changes to sync"; then
    log "SQLite: No changes needed"
  fi
fi

# ============================================================
# STEP 3: Sync portraits for Docker
# ============================================================

log_section "Step 3: Portraits -> ./portraits/ (for Docker)"

if [ ! -d "$VAULT_PORTRAITS" ]; then
  log "WARNING: Vault portraits directory not found: $VAULT_PORTRAITS"
else
  # Count portraits before sync
  BEFORE_COUNT=$(find "$PROJECT_DIR/portraits" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.webp" \) 2>/dev/null | wc -l | tr -d ' ')

  if [ "$DRY_RUN" = true ]; then
    log "DRY RUN: Would rsync portraits from vault"
    # Show what would be synced
    rsync -av --dry-run --ignore-existing \
      "$VAULT_PORTRAITS/" \
      "$PROJECT_DIR/portraits/" 2>&1 | tail -20 | tee -a "$LOG_FILE"
  else
    log "Syncing portraits (new files only)..."
    mkdir -p "$PROJECT_DIR/portraits"

    rsync -av --ignore-existing \
      --include="*.jpg" \
      --include="*.jpeg" \
      --include="*.png" \
      --include="*.webp" \
      --exclude="*" \
      "$VAULT_PORTRAITS/" \
      "$PROJECT_DIR/portraits/" 2>&1 | tee -a "$LOG_FILE"

    # Count portraits after sync
    AFTER_COUNT=$(find "$PROJECT_DIR/portraits" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.webp" \) 2>/dev/null | wc -l | tr -d ' ')

    NEW_PORTRAITS=$((AFTER_COUNT - BEFORE_COUNT))
    log "Portraits synced: $NEW_PORTRAITS new files (total: $AFTER_COUNT)"

    if [ "$NEW_PORTRAITS" -gt 0 ]; then
      SQLITE_MODIFIED=true  # Trigger restart if new portraits added
    fi
  fi
fi

# ============================================================
# STEP 4: Restart Docker container (if changes detected)
# ============================================================

log_section "Step 4: Docker Container Restart"

if [ "$SKIP_DOCKER" = true ]; then
  log "SKIPPED (--skip-docker flag)"
elif [ "$DRY_RUN" = true ]; then
  log "DRY RUN: Would restart Docker container if changes detected"
  log "SQLite modified: $SQLITE_MODIFIED"
elif [ "$SQLITE_MODIFIED" = true ]; then
  log "Changes detected, restarting Docker container..."

  # Check if docker-compose is available and container is running
  if command -v docker-compose &> /dev/null; then
    if docker-compose -f "$PROJECT_DIR/docker-compose.yml" ps --quiet jazzapedia 2>/dev/null | grep -q .; then
      docker-compose -f "$PROJECT_DIR/docker-compose.yml" restart jazzapedia 2>&1 | tee -a "$LOG_FILE"
      log "Docker container restarted"
    else
      log "Docker container not running, skipping restart"
    fi
  elif command -v docker &> /dev/null && docker compose version &> /dev/null; then
    # Try docker compose (v2)
    if docker compose -f "$PROJECT_DIR/docker-compose.yml" ps --quiet jazzapedia 2>/dev/null | grep -q .; then
      docker compose -f "$PROJECT_DIR/docker-compose.yml" restart jazzapedia 2>&1 | tee -a "$LOG_FILE"
      log "Docker container restarted"
    else
      log "Docker container not running, skipping restart"
    fi
  else
    log "WARNING: docker-compose not found, skipping container restart"
  fi
else
  log "No changes detected, Docker restart not needed"
fi

# ============================================================
# SUMMARY
# ============================================================

log_section "Sync Complete!"
log "Log file: $LOG_FILE"
log "SQLite modified: $SQLITE_MODIFIED"

if [ "$DRY_RUN" = true ]; then
  log ""
  log "This was a DRY RUN - no changes were made"
fi

log ""
log "Next steps:"
log "  - GitHub Actions will run at 5am CT (D1 + R2 sync)"
log "  - Verify with: npm run sync:verify"
log "  - Check Docker: curl http://localhost/artists/miles-davis"
