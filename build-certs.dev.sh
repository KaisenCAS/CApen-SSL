#!/bin/bash
set -x

readonly BASE="$(dirname -- "$(readlink -f -- "$0")")"

# Load declarations
source "$BASE/src/declaration"

# Load global components
source "$BASE/components/common"
source "$BASE/components/messages"

# Load scripts
for s in "$BASE/scripts/"*; do source "$s"; done

# Load the main module
source "$BASE/src/core"