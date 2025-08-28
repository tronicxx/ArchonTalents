#!/bin/bash

# Archon Talents - Release Package Script
# This script creates a release package for WowUp compatibility

set -e

# Configuration
ADDON_NAME="ArchonTalents"
VERSION=${1:-"1.0.0"}
RELEASE_DIR="release"
PACKAGE_NAME="${ADDON_NAME}-${VERSION}.zip"

echo "🎯 Creating Archon Talents Release Package v${VERSION}"

# Clean previous release
if [ -d "$RELEASE_DIR" ]; then
    rm -rf "$RELEASE_DIR"
fi

# Create release directory
mkdir -p "$RELEASE_DIR/${ADDON_NAME}"

# Copy essential addon files
echo "📁 Copying addon files..."
cp "${ADDON_NAME}.lua" "$RELEASE_DIR/${ADDON_NAME}/"
cp "${ADDON_NAME}.toc" "$RELEASE_DIR/${ADDON_NAME}/"
cp "ArchonData.lua" "$RELEASE_DIR/${ADDON_NAME}/"
cp "embeds.xml" "$RELEASE_DIR/${ADDON_NAME}/"

# Copy Libs folder if it exists
if [ -d "Libs" ]; then
    echo "📚 Copying libraries..."
    cp -r "Libs" "$RELEASE_DIR/${ADDON_NAME}/"
fi

# Copy icon if it exists
if [ -f "minimap_icon.tga" ]; then
    echo "🎨 Copying icon..."
    cp "minimap_icon.tga" "$RELEASE_DIR/${ADDON_NAME}/"
fi

# Create the zip package
echo "📦 Creating package: ${PACKAGE_NAME}"
cd "$RELEASE_DIR"
zip -r "../${PACKAGE_NAME}" "${ADDON_NAME}/"
cd ..

# Clean up
rm -rf "$RELEASE_DIR"

echo "✅ Release package created: ${PACKAGE_NAME}"
echo "📋 Package contents:"
unzip -l "$PACKAGE_NAME"

echo ""
echo "🚀 Next steps:"
echo "1. Create a new GitHub release with tag: v${VERSION}"
echo "2. Upload ${PACKAGE_NAME} to the release"
echo "3. WowUp will be able to install from this release!"
