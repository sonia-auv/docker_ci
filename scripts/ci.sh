#!/usr/bin/env bash

# Usage: ./scripts/ci.sh [BUILD_FOR] [BRANCH_NAME]

set -e
set -o pipefail

BUILD_FOR=$1
BRANCH_NAME=$2

docker build --build-arg BUILD_FOR=$BUILD_FOR BRANCH_NAME=$BRANCH_NAME .
