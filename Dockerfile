FROM nvidia/cuda:11.7.1-devel-ubuntu22.04
RUN apt-get update
RUN apt-get install -y fish fizsh build-essential aria2 cpio git-lfs squashfs-tools zstd
COPY 'Anaconda3-2023.07-2-Linux-x86_64.sh' /
RUN bash '/Anaconda3-2023.07-2-Linux-x86_64.sh' -b -p '/opt/anaconda'
rm -vf -- '/Anaconda3-2023.07-2-Linux-x86_64.sh'
