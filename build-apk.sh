#!/bin/bash
# Build script for XPrivacyLua NG
# This script builds both debug and release APKs

set -e

echo "Building XPrivacyLua NG APK..."
echo "========================================"

# Clean previous builds
echo "Cleaning previous builds..."
./gradlew clean

# Build debug APK
echo "Building debug APK..."
./gradlew assembleDebug

# Build release APK (unsigned)
echo "Building release APK..."
./gradlew assembleRelease

echo ""
echo "========================================"
echo "Build completed!"
echo ""
echo "Debug APK location:"
find app/build/outputs/apk/debug -name "*.apk" 2>/dev/null || echo "Not found"
echo ""
echo "Release APK location:"
find app/build/outputs/apk/release -name "*.apk" 2>/dev/null || echo "Not found"
echo ""
echo "Note: Release APK needs to be signed before installation"
