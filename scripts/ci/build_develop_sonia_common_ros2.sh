#!/usr/bin/env bash

set -e
set -o pipefail

# TODO: Let the branch name empty.
docker build --build-arg BUILD_FOR=sonia_common_ros2 --build-arg BRANCH_NAME=add-ci-cd .
