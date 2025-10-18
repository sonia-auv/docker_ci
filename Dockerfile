FROM althack/ros2:humble-dev

ARG BUILD_FOR="none"
ARG BRANCH_NAME="develop"

WORKDIR /build

COPY . .

RUN ./scripts/entry.sh "${BUILD_FOR}" "${BRANCH_NAME}"
