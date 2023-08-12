#!/usr/bin/sh
cd "$('dirname' '--' "${0}")"
mkdir -pv -- './nvidia_docker_image'
cd './nvidia_docker_image'
ls 'Anaconda3-2023.07-2-Linux-x86_64.sh' || aria2c -c -x16 -j16 'https://repo.anaconda.com/archive/Anaconda3-2023.07-2-Linux-x86_64.sh'
