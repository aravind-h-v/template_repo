#!/usr/bin/sh
apt-get 'update'

apt-get install -y \
    'aria2' \
    'cpio' \
    'docker' \
    'nvidia-container-toolkit' \
    'nvidia-container-toolkit-base' \
    'zstd' \
;
