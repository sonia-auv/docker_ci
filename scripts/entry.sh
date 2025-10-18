#!/usr/bin/env bash

set -e
set -o pipefail

REPO=$1
BRANCH_NAME=$2

source /opt/ros/humble/setup.bash

./scripts/build.sh $REPO $BRANCH_NAME
