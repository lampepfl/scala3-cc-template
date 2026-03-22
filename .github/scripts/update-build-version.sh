#!/usr/bin/env bash

set -xe

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

LATEST_NIGHTLY=$("$SCRIPT_DIR"/latest-nightly.sc)

sed -Ei 's/val scala3Version = ".+-NIGHTLY"/val scala3Version = "'$LATEST_NIGHTLY'"/g' "$SCRIPT_DIR/../../build.sbt"

echo "Latest nightly updated to $LATEST_NIGHTLY"
