# docker_ci

The purpose of this repository is to centralize all CI/CD scripts.

## Build

If you want to test locally to build a repo with Docker, here is the command to run:

```sh
# From the root of the repository
docker build --build-arg BUILD_FOR=<something> BRANCH_NAME=<branch_name> .
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

  Default: none

 BRANCH_NAME:

  The branch that will be used for checkout on a given repository.

  Default: develop
```
