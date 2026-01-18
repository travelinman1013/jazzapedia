#!/bin/bash
# Post-discovery sync wrapper
# Triggered by launchd when artist discovery completes
# Simply calls unified-daily-sync.sh with --clear-signal flag

SCRIPT_DIR="$(dirname "$0")"
exec "$SCRIPT_DIR/unified-daily-sync.sh" --clear-signal "$@"
