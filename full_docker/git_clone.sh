#!/usr/bin/sh
get_gitlab_repo(){
    DIR_PREFIX="${HOME}/GITLAB/$(echo "${1}" | sed 's@https://gitlab.com/@@g ; s@.git$@@g')"

    mkdir -pv -- "$('dirname' -- "${DIR_PREFIX}")" 

    cd "$(dirname -- "${DIR_PREFIX}")" 

    git clone "${1}"
    cd "${DIR_PREFIX}"
    git pull
    git submodule update --init --recursive
}

get_gitlab_repo 'https://gitlab.com/nvidia/container-images/cuda.git'
