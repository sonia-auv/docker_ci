#!/usr/bin/env bash

set -e
set -o pipefail

# https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_network
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt update

# NOTE: This make possible to skip prompt at the end of installation
# of cuda.
export DEBIAN_FRONTEND=noninteractive

sudo debconf-set-selections << EOF
keyboard-configuration keyboard-configuration/layoutcode string us
keyboard-configuration keyboard-configuration/modelcode string pc105
EOF

sudo apt install -y cuda-13-0 cuda-toolkit-13-0
rm cuda-keyring_1.1-1_all.deb

sudo apt install -y libnvinfer-dev \
	libnvinfer-plugin-dev tensorrt
