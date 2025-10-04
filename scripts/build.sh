#!/usr/bin/env bash

set -e
set -o pipefail

source /opt/ros/humble/setup.bash

if [[ $BUILD_FOR == "sonia_bt_runner" ]]
then
	./scripts/build/sonia_bt_runner.sh $BRANCH_NAME
elif [[ $BUILD_FOR == "sonia_common_ros2" ]]
then
	./scripts/build/sonia_common_ros2.sh $BRANCH_NAME
else
	echo "Unknown \`BUILD_FOR\` value: $BUILD_FOR"
	exit 1
fi
