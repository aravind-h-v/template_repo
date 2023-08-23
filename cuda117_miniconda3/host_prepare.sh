#!/usr/bin/sh
sudo apt-get install aria2

cd "$('dirname' '--' "${0}")"
mkdir -pv -- './prep_files'
cd './prep_files'
ls './Miniconda3-latest-Linux-x86_64.sh' || aria2c -c -x16 -j16 'https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh'
cd ..

cd "$('dirname' '--' "${0}")"
mkdir -pv -- './prep_files'
cp './Dockerfile_base' './prep_files/Dockerfile'
cd './prep_files'
sudo docker build -t 'cuda1171_cudnn8_miniconda3' .
cd ..
