#!/usr/bin/env bash

# Usage: ./scripts/build.sh [REPO] [BRANCH_NAME]

set -e
set -o pipefail

REPO=$1
BRANCH_NAME=$2

git clone https://github.com/sonia-auv/$REPO.git
cd $REPO

if [[ $BRANCH_NAME != "" ]]
then
	git checkout $BRANCH_NAME
fi
