#!/usr/bin/sh
sudo systemctl 'restart' 'docker'

sudo docker 'search' 'cuda'

sudo docker 'pull' 'nvidia/cuda:11.7.1-devel-ubuntu22.04'

sudo nvidia-ctk '--version'

sudo nvidia-ctk 'cdi' 'generate' '--output=/etc/cdi/nvidia.yaml'
sudo nvidia-ctk 'cdi' 'generate' '--output=/var/run/cdi/nvidia.yaml'

grep '  name:' '/etc/cdi/nvidia.yaml'

sudo nvidia-ctk 'runtime' 'configure' '--runtime=docker'

sudo systemctl restart docker

sudo docker 'run' '--rm' '--runtime=nvidia' '--gpus' 'all' 'nvidia/cuda:11.7.1-devel-ubuntu22.04' 'nvidia-smi'


