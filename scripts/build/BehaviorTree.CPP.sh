#!/usr/bin/env bash

set -e
set -o pipefail

sudo apt update
sudo apt install -y libzmq3-dev

git clone https://github.com/BehaviorTree/BehaviorTree.CPP.git
cd BehaviorTree.CPP

colcon build --cmake-force-configure --install-base INSTALL_BASE
