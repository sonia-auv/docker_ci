# Build Arguments:
#
# BUILD_FOR:
#
#  Values:
#
#    - sonia_bt_runner: Build sonia_bt_runner
#    - sonia_common_ros2: Build sonia_common_ros2
#
# BRANCH_NAME:
#
#  The branch that will be used for checkout on a given repository.

FROM althack/ros2:humble-dev

ARG BUILD_FOR="none"
ARG BRANCH_NAME="develop"

WORKDIR /build

COPY . .

RUN BUILD_FOR="${BUILD_FOR}" BRANCH_NAME="${BRANCH_NAME}" ./scripts/build.sh
