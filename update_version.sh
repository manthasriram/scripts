#!/bin/bash

if [ -z "$1" ]; then
  echo "usage: update-version.sh <new version number>"
  exit 1
fi

NEW_VERSION="$1"
SUB="s|<version>[^[:space:]]+</version><!-- release version -->|<version>$NEW_VERSION</version><!-- release version -->|g"

echo "updating poms to $NEW_VERSION"
POM_FILES=$(find . -name "pom.xml" | grep -v "/target/")
for p in $POM_FILES; do
        printf "    $p"
        sed -E -i "" -e "$SUB" $p && printf " ✓\n"
done
