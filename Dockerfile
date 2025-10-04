# Build Arguments:
#
# BUILD_FOR:
#
#  Values:
#
#    - sonia_bt_runner: Build sonia_bt_runner
#    - sonia_common_ros2: Build sonia_common_ros2

FROM althack/ros2:humble-dev

ARG BUILD_FOR="none"

WORKDIR /build

COPY . .

RUN BUILD_FOR="${BUILD_FOR}" ./scripts/build.sh
