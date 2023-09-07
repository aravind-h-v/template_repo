#!/usr/bin/sh
sudo apt-get remove docker.io
sudo apt-get remove docker-doc
sudo apt-get remove docker-compose
sudo apt-get remove podman-docker
sudo apt-get remove containerd
sudo apt-get remove runc

sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg

sudo install -m 0755 -d '/etc/apt/keyrings'
curl -fsSL 'https://download.docker.com/linux/ubuntu/gpg' | sudo gpg --dearmor -o '/etc/apt/keyrings/docker.gpg'
sudo chmod 'a+r' '/etc/apt/keyrings/docker.gpg'

echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update

sudo apt-get install -y \
    'docker-ce' \
    'docker-ce-cli' \
    'containerd.io' \
    'docker-buildx-plugin' \
    'docker-compose-plugin' \
;

sudo apt-get install -y \
    'nvidia-container-toolkit' \
    'nvidia-container-toolkit-base' \
;


