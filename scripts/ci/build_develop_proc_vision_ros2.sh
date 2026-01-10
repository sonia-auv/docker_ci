#!/usr/bin/env bash

set -e
set -o pipefail

docker build --build-arg BUILD_FOR=proc_vision_ros2 .
