#!/usr/bin/env bash

set -e
set -o pipefail

REPO=$1
BRANCH_NAME=$2

./scripts/clone.sh $REPO $BRANCH_NAME
./$REPO/scripts/build.sh
