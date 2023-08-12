#!/usr/bin/sh
systemctl 'restart' 'docker'

docker 'search' 'cuda'

docker 'pull' 'nvidia/cuda:11.7.1-devel-ubuntu22.04'
