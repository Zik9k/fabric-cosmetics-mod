#!/bin/sh
set -e

GRADLE_VERSION="8.11.1"
GRADLE_USER_HOME="${GRADLE_USER_HOME:-$HOME/.gradle}"
DIST_DIR="$GRADLE_USER_HOME/wrapper/dists/gradle-$GRADLE_VERSION-bin"
INSTALL_DIR="$DIST_DIR/gradle-$GRADLE_VERSION"
ZIP="$DIST_DIR/gradle-$GRADLE_VERSION-bin.zip"

if [ ! -x "$INSTALL_DIR/bin/gradle" ]; then
  mkdir -p "$DIST_DIR"
  if [ ! -f "$ZIP" ]; then
    echo "Downloading Gradle $GRADLE_VERSION..."
    if command -v curl >/dev/null 2>&1; then
      curl -fL --retry 3 "https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip" -o "$ZIP"
    elif command -v wget >/dev/null 2>&1; then
      wget -O "$ZIP" "https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip"
    else
      echo "Error: curl or wget is required." >&2
      exit 1
    fi
  fi
  rm -rf "$INSTALL_DIR"
  unzip -q "$ZIP" -d "$DIST_DIR"
fi

exec "$INSTALL_DIR/bin/gradle" "$@"
