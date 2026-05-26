#!/usr/bin/env bash

set -e
set -o pipefail

docker build --build-arg BUILD_FOR=sonia_monitor .