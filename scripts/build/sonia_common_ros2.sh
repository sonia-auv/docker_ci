#!/usr/bin/env bash

set -e
set -o pipefail

git clone https://github.com/sonia-auv/sonia_common_ros2.git
cd sonia_common_ros2

colcon build --cmake-force-configure --install INSTALL_BASE
