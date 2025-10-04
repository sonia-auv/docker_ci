#!/usr/bin/env bash

set -e
set -o pipefail

./scripts/build/sonia_common_ros2.sh
./scripts/build/BehaviorTree.CPP.sh

git clone https://github.com/sonia-auv/sonia_bt_runner.git
cd sonia_bt_runner

export behaviortree_cpp_DIR=/build/BehaviorTree.CPP/INSTALL_BASE/behaviortree_cpp/share/behaviortree_cpp/cmake
export sonia_common_ros2_DIR=/build/sonia_common_ros2/INSTALL_BASE/sonia_common_ros2/share/sonia_common_ros2/cmake/

colcon build --cmake-force-configure --install INSTALL_BASE
