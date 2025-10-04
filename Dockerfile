FROM althack/ros2:humble-dev

ARG BUILD_FOR="none"
ARG BRANCH_NAME="develop"

WORKDIR /build

COPY . .

RUN BUILD_FOR="${BUILD_FOR}" BRANCH_NAME="${BRANCH_NAME}" ./scripts/build.sh
