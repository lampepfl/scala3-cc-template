#!/usr/bin/env bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BUILD_FILE="$SCRIPT_DIR/../../build.sbt"

LATEST_NIGHTLY=$("$SCRIPT_DIR"/latest-nightly.sc)

sed -Ei 's/val scala3Version = ".+-NIGHTLY"/val scala3Version = "'$LATEST_NIGHTLY'"/g' "$BUILD_FILE"

if git diff --quiet "$BUILD_FILE"; then
  echo "No changes."
  exit 0
fi

echo "Latest nightly updated to $LATEST_NIGHTLY"

git add "$BUILD_FILE"
git \
  -c user.name="GitHub Actions" \
  -c user.email="nki@fastmail.com" \
  commit \
  -m "Update Scala version to $LATEST_NIGHTLY"
git push
