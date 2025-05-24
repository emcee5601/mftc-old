#!/bin/sh
# determine the versions we want to build

# last 10 versions
LAST_N_VERSIONS=$(git ls-remote --tags --sort -version:refname https://github.com/emcee5601/fit-test-console.git | cut -f3 -d/ | head -10)
ALREADY_DEPLOYED_VERSIONS=$(git ls-tree gh-pages --name-only | grep -e '^v')

# only want versions not already deployed
NEW_VERSIONS=$(printf "%s\n%s" "$LAST_N_VERSIONS" "$ALREADY_DEPLOYED_VERSIONS"  | sort | uniq -c | grep -e '^\s*1' | awk '{print $2}')

echo "$NEW_VERSIONS"

