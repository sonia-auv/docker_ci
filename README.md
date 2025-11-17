# docker_ci

The purpose of this repository is to centralize all CI/CD scripts.

## Build

If you want to test locally to build a repo with Docker, here is the command to run:

```sh
# From the root of the repository
docker build --build-arg BUILD_FOR=<something> --build-arg BRANCH_NAME=<branch_name> .
```

Here is some documentation on the arguments expected at build-time:

```
 Build Arguments:

 BUILD_FOR:

  This allows you to specify what you want to build.

  Values:

    - sonia_bt_runner: Build sonia_bt_runner
    - sonia_common_ros2: Build sonia_common_ros2
    - depth_port_manager: Build depth_port_manager
    - proc_vision_ros2: Build proc_vision_ros2

  Default: none

 BRANCH_NAME:

  The branch that will be used for checkout on a given repository.

  Default: develop
```

## How to setup a CI on a new repository?

1. Create the following file at the root of your repository with execution permission (`chmod +x <filename>`): `scripts/build.sh`
2. Create the following file at the root of your repository: `.github/workflows/build.yml`
3. Use the following template, to fill `.github/workflows/build.yml`:

```yaml
name: Build

env:
  BRANCH_NAME: ${{ github.head_ref || github.ref_name }}

on:
  pull_request:
  push:
    branches: ["develop"]

jobs:
  build:
    runs-on: ubuntu-22.04
    steps:
      - uses: docker/setup-docker-action@v4
      - uses: actions/checkout@v4
        with:
          repository: sonia-auv/docker_ci
          ref: develop
      - name: Running
        run: |
          ./scripts/ci.sh <your_repo_name> $BRANCH_NAME
```

> [!TIP]
> If you have specific dependencies such as [BehaviorTree.CPP](scripts/build/BehaviorTree.CPP.sh), you can store the build script in this repository, under the `scripts/build` directory.
