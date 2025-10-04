#!/usr/bin/env bash

set -e
set -o pipefail

BRANCH_NAME=$1

git clone https://github.com/sonia-auv/sonia_common_ros2.git
cd sonia_common_ros2

git checkout $BRANCH_NAME

colcon build --cmake-force-configure --install INSTALL_BASE
