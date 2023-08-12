#!/usr/bin/sh
cd "$('dirname' '--' "${0}")"
mkdir -pv -- './nvidia_docker_image'
cp -vf -- './Dockerfile' './nvidia_docker_image'
cd './nvidia_docker_image'
docker build -t getting-started .
