#!/usr/bin/sh
sudo apt-key del 7fa2af80

DISTRO='ubuntu2204'
ARCH='x86_64'
wget "https://developer.download.nvidia.com/compute/cuda/repos/${DISTRO}/${ARCH}/cuda-keyring_1.1-1_all.deb"
sudo dpkg -i 'cuda-keyring_1.1-1_all.deb'

DISTRO='ubuntu2204'
ARCH='x86_64'
echo "deb [signed-by=/usr/share/keyrings/cuda-archive-keyring.gpg] https://developer.download.nvidia.com/compute/cuda/repos/${DISTRO}/${ARCH}/ /" > "/etc/apt/sources.list.d/cuda-${DISTRO}-${ARCH}.list"

DISTRO='ubuntu2204'
ARCH='x86_64'
wget "https://developer.download.nvidia.com/compute/cuda/repos/${DISTRO}/${ARCH}/cuda-${DISTRO}.pin"
sudo mv "cuda-${DISTRO}.pin" '/etc/apt/preferences.d/cuda-repository-pin-600'

sudo apt-get update
sudo apt-get install cuda
sudo apt-get install cuda-toolkit


