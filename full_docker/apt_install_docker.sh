#!/usr/bin/sh
apt-get install -y \
    'aria2' \
    'build-essential' \
    'cpio' \
    'fish' \
    'fizsh' \
    'git' \
    'git-lfs' \
    'squashfs-tools' \
    'zstd' \
;

sudo apt-get remove docker.io
sudo apt-get remove docker-doc
sudo apt-get remove docker-compose
sudo apt-get remove podman-docker
sudo apt-get remove containerd
sudo apt-get remove runc

sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL 'https://download.docker.com/linux/ubuntu/gpg' \
    | sudo gpg --dearmor -o '/etc/apt/keyrings/docker.gpg'
sudo chmod 'a+r' '/etc/apt/keyrings/docker.gpg'

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install \
    'docker-ce' \
    'docker-ce-cli' \
    'containerd.io' \
    'docker-buildx-plugin' \
    'docker-compose-plugin' \
;

apt-get install -y \
    'nvidia-container-toolkit' \
    'nvidia-container-toolkit-base' \
;
