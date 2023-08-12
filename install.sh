#!/usr/bin/sh
cd "$('dirname' '--' "${0}")"
'sudo' 'apt-get' 'update'

sudo apt-get install -y \
    'nvidia-container-toolkit-base' \
    'aria2' \
    'zstd' \
    'cpio' \
;

'nvidia-ctk' '--version'

'sudo' 'nvidia-ctk' 'cdi' 'generate' '--output=/etc/cdi/nvidia.yaml'
'sudo' 'nvidia-ctk' 'cdi' 'generate' '--output=/var/run/cdi/nvidia.yaml'

'grep' '  name:' '/etc/cdi/nvidia.yaml'

'./download_anaconda.sh'

'apt-get' 'install' 'docker'

'sudo' 'nvidia-ctk' 'runtime' 'configure' '--runtime=docker'

'sudo' 'systemctl' 'restart' 'docker'
