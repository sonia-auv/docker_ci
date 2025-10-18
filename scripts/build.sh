#!/usr/bin/env bash

set -e
set -o pipefail

REPO=$1
BRANCH_NAME=$2
PWD=$(pwd)

./scripts/clone.sh $REPO $BRANCH_NAME
./$REPO/scripts/build.sh $PWD
