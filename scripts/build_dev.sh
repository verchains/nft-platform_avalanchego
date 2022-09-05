#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Avalanchego root folder
AVALANCHE_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )"; cd .. && pwd )

# Linux env
export GOOS=linux
export GOARCH=amd64

# Build env
export AVALANCHE_BINARY_PATH="$AVALANCHE_PATH/build/avalanchego_dev"

# Build avalanchego
"$AVALANCHE_PATH"/scripts/build_avalanche.sh

# Copy to deploy folder
#cd ../scripts
#./rsync-deploy.sh
