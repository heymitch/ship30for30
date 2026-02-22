#!/bin/bash
# Build Ship30 plugin ZIP for Cowork upload
#
# Produces dist/ship30for30.zip with the plugin folder at root level
# (required by Cowork's upload handler)

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DIST_DIR="$SCRIPT_DIR/dist"
PLUGIN_NAME="ship30for30"

echo "=== Building $PLUGIN_NAME plugin ZIP ==="

# Clean previous build
rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"

# Create a temp directory with the plugin folder at root
TEMP_DIR=$(mktemp -d)
mkdir -p "$TEMP_DIR/$PLUGIN_NAME"

# Copy plugin contents
cp -R "$SCRIPT_DIR/.claude-plugin" "$TEMP_DIR/$PLUGIN_NAME/"
cp -R "$SCRIPT_DIR/skills" "$TEMP_DIR/$PLUGIN_NAME/"
cp -R "$SCRIPT_DIR/agents" "$TEMP_DIR/$PLUGIN_NAME/"
cp "$SCRIPT_DIR/settings.json" "$TEMP_DIR/$PLUGIN_NAME/"

# Build the ZIP from temp dir so plugin folder is at root level
cd "$TEMP_DIR"
zip -r "$DIST_DIR/$PLUGIN_NAME.zip" "$PLUGIN_NAME/" \
  -x "*.DS_Store" "*/.git/*" "*/dev/*" "*/README.md"

# Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "Built: $DIST_DIR/$PLUGIN_NAME.zip"
echo ""
echo "Install: Open Cowork -> Plugins -> Upload -> drag ship30for30.zip"
