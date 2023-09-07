#!/usr/bin/sh
systemctl 'restart' 'docker'

docker 'search' 'cuda'

docker 'pull' 'nvidia/cuda:11.7.1-devel-ubuntu22.04'

nvidia-ctk '--version'

nvidia-ctk 'cdi' 'generate' '--output=/etc/cdi/nvidia.yaml'
nvidia-ctk 'cdi' 'generate' '--output=/var/run/cdi/nvidia.yaml'

grep '  name:' '/etc/cdi/nvidia.yaml'

nvidia-ctk 'runtime' 'configure' '--runtime=docker'


