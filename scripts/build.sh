#!/usr/bin/env bash

# Usage: ./scripts/build.sh [REPO] [BRANCH_NAME]

set -e
set -o pipefail

sudo apt update
sudo apt install libtinyxml2-dev

REPO=$1
BRANCH_NAME=$2
PWD=$(pwd)

./scripts/clone.sh $REPO $BRANCH_NAME
./$REPO/scripts/build.sh $PWD
