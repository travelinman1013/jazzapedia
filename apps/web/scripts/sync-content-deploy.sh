#!/bin/bash
# Sync vault content to content-deploy directory for GitHub Actions
#
# Uses environment variables with fallbacks:
#   VAULT_ARTISTS   - Path to artist markdown files
#   VAULT_PORTRAITS - Path to portrait images

set -e

VAULT_ARTISTS="${VAULT_ARTISTS:-/Users/maxwell/LETSGO/MaxVault/01_Projects/PersonalArtistWiki/Artists}"
VAULT_PORTRAITS="${VAULT_PORTRAITS:-/Users/maxwell/LETSGO/MaxVault/03_Resources/source_material/ArtistPortraits}"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONTENT_DEPLOY="$SCRIPT_DIR/../content-deploy"

echo "Syncing vault to content-deploy..."
echo "  Artists:   $VAULT_ARTISTS"
echo "  Portraits: $VAULT_PORTRAITS"

# Sync artists (exclude timestamped backups and hidden files)
rsync -av --delete \
  --exclude='.*' \
  --exclude='*_20[0-9][0-9][0-9][0-9][0-9][0-9]_[0-9][0-9][0-9][0-9][0-9][0-9].md' \
  "$VAULT_ARTISTS/" "$CONTENT_DEPLOY/artists/"

# Sync portraits
rsync -av --delete \
  --exclude='.*' \
  "$VAULT_PORTRAITS/" "$CONTENT_DEPLOY/portraits/"

echo "Done."
