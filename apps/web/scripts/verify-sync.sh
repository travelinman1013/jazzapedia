#!/bin/bash
# Verify Sync Status for Jazzapedia
# Compares artist counts across vault, SQLite, and D1 databases
#
# Usage:
#   ./scripts/verify-sync.sh
#   ./scripts/verify-sync.sh --verbose    # Show more details

set -e

REPO_ROOT="/Users/maxwell/Projects/jazzapedia"
WEB_DIR="$REPO_ROOT/apps/web"
LOCAL_ARTISTS="$REPO_ROOT/content/artists"
SQLITE_DB="$REPO_ROOT/data/jazzapedia.db"

VERBOSE=false
for arg in "$@"; do
  case $arg in
    --verbose|-v)
      VERBOSE=true
      ;;
  esac
done

cd "$WEB_DIR"

echo "============================================================"
echo "Jazzapedia Sync Verification"
echo "============================================================"
echo ""

# ============================================================
# Count vault files (exclude timestamped backups)
# ============================================================

if [ -d "$VAULT_ARTISTS" ]; then
  VAULT_COUNT=$(find "$VAULT_ARTISTS" -name "*.md" ! -name ".*" ! -name "*_20[0-9][0-9][0-9][0-9][0-9][0-9]_*.md" | wc -l | tr -d ' ')
  echo "Vault files:         $VAULT_COUNT"
else
  VAULT_COUNT=0
  echo "Vault files:         (not accessible)"
fi

# Also check content-deploy
if [ -d "$WEB_DIR/content-deploy/artists" ]; then
  CONTENT_DEPLOY_COUNT=$(find "$WEB_DIR/content-deploy/artists" -name "*.md" | wc -l | tr -d ' ')
  echo "content-deploy:      $CONTENT_DEPLOY_COUNT"
else
  CONTENT_DEPLOY_COUNT=0
  echo "content-deploy:      (not found)"
fi

# ============================================================
# Count SQLite artists
# ============================================================

if [ -f "$SQLITE_DB" ]; then
  SQLITE_COUNT=$(sqlite3 "$SQLITE_DB" "SELECT COUNT(*) FROM artists;" 2>/dev/null || echo "0")
  echo "SQLite artists:      $SQLITE_COUNT"

  if [ "$VERBOSE" = true ]; then
    echo ""
    echo "SQLite recent artists (last 5 updated):"
    sqlite3 "$SQLITE_DB" "SELECT '  - ' || title || ' (' || slug || ')' FROM artists ORDER BY updated_at DESC LIMIT 5;" 2>/dev/null
  fi
else
  SQLITE_COUNT=0
  echo "SQLite artists:      (database not found at $SQLITE_DB)"
fi

# ============================================================
# Count D1 artists (requires wrangler)
# ============================================================

echo ""
echo "Checking D1 (production)..."

D1_COUNT=0
if command -v npx &> /dev/null; then
  D1_RESULT=$(npx wrangler d1 execute jazzapedia --remote --command="SELECT COUNT(*) as count FROM artists" --json 2>/dev/null || echo "[]")

  # Try to extract count from JSON result
  if echo "$D1_RESULT" | grep -q "count"; then
    D1_COUNT=$(echo "$D1_RESULT" | grep -o '"count":[0-9]*' | grep -o '[0-9]*' | head -1)
    D1_COUNT=${D1_COUNT:-0}  # Default to 0 if empty
    echo "D1 artists:          $D1_COUNT"
  else
    echo "D1 artists:          (query failed - check credentials)"
  fi
else
  echo "D1 artists:          (npx not available)"
fi

# ============================================================
# Count portraits
# ============================================================

echo ""
if [ -d "$REPO_ROOT/portraits" ]; then
  LOCAL_PORTRAITS=$(find "$REPO_ROOT/portraits" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.webp" \) | wc -l | tr -d ' ')
  echo "Local portraits:     $LOCAL_PORTRAITS"
else
  LOCAL_PORTRAITS=0
  echo "Local portraits:     (directory not found)"
fi

# ============================================================
# Check Docker container status
# ============================================================

echo ""
echo "Docker status:"
if command -v docker &> /dev/null; then
  CONTAINER_STATUS=$(docker ps --filter "name=jazzapedia-web" --format "{{.Status}}" 2>/dev/null || echo "")
  if [ -n "$CONTAINER_STATUS" ]; then
    echo "  Container:         Running ($CONTAINER_STATUS)"
  else
    echo "  Container:         Not running"
  fi
else
  echo "  Container:         (docker not available)"
fi

# ============================================================
# Comparison and warnings
# ============================================================

echo ""
echo "============================================================"
echo "Analysis"
echo "============================================================"

WARNINGS=0

# Check SQLite vs Vault
if [ "$VAULT_COUNT" -gt 0 ] && [ "$SQLITE_COUNT" -gt 0 ]; then
  DIFF=$((VAULT_COUNT - SQLITE_COUNT))
  ABS_DIFF=${DIFF#-}  # Absolute value

  if [ "$ABS_DIFF" -gt 10 ]; then
    echo "WARNING: SQLite differs from vault by $ABS_DIFF artists"
    WARNINGS=$((WARNINGS + 1))
  else
    echo "SQLite: OK (within 10 of vault)"
  fi
fi

# Check D1 vs Vault
if [ "$VAULT_COUNT" -gt 0 ] && [ "$D1_COUNT" -gt 0 ]; then
  DIFF=$((VAULT_COUNT - D1_COUNT))
  ABS_DIFF=${DIFF#-}

  if [ "$ABS_DIFF" -gt 10 ]; then
    echo "WARNING: D1 differs from vault by $ABS_DIFF artists"
    WARNINGS=$((WARNINGS + 1))
  else
    echo "D1: OK (within 10 of vault)"
  fi
fi

# Check SQLite vs D1
if [ "$SQLITE_COUNT" -gt 0 ] && [ "$D1_COUNT" -gt 0 ]; then
  DIFF=$((SQLITE_COUNT - D1_COUNT))
  ABS_DIFF=${DIFF#-}

  if [ "$ABS_DIFF" -gt 5 ]; then
    echo "WARNING: SQLite and D1 differ by $ABS_DIFF artists"
    WARNINGS=$((WARNINGS + 1))
  else
    echo "SQLite vs D1: OK (within 5)"
  fi
fi

# Check content-deploy vs vault
if [ "$VAULT_COUNT" -gt 0 ] && [ "$CONTENT_DEPLOY_COUNT" -gt 0 ]; then
  DIFF=$((VAULT_COUNT - CONTENT_DEPLOY_COUNT))
  ABS_DIFF=${DIFF#-}

  if [ "$ABS_DIFF" -gt 10 ]; then
    echo "WARNING: content-deploy differs from vault by $ABS_DIFF"
    echo "  Run: npm run sync:content-deploy"
    WARNINGS=$((WARNINGS + 1))
  else
    echo "content-deploy: OK (within 10 of vault)"
  fi
fi

echo ""
if [ "$WARNINGS" -eq 0 ]; then
  echo "All syncs appear healthy!"
else
  echo "Found $WARNINGS warning(s). Consider running:"
  echo "  npm run sync:all           # Full sync"
  echo "  npm run sync:incr:sqlite   # SQLite incremental only"
fi

echo ""
echo "Last sync logs:"
if [ -d "$WEB_DIR/logs" ]; then
  ls -lt "$WEB_DIR/logs"/sync-*.log 2>/dev/null | head -3 || echo "  (no logs found)"
else
  echo "  (logs directory not found)"
fi
