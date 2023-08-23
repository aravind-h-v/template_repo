#!/usr/bin/sh
cd "${HOME}/GITLAB/nvidia/container-images/cuda"

# './build.sh' --help

sudo './build.sh' \
    '-d' \
    '--image-name' 'nvidia/cuda' \
    '--cuda-version' '11.7.1' \
    '--os' 'ubuntu' \
    '--os-version' '20.04' \
    '--arch' 'x86_64' \
;
