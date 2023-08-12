#!/usr/bin/sh
nvidia-ctk '--version'

nvidia-ctk 'cdi' 'generate' '--output=/etc/cdi/nvidia.yaml'
nvidia-ctk 'cdi' 'generate' '--output=/var/run/cdi/nvidia.yaml'

grep '  name:' '/etc/cdi/nvidia.yaml'

nvidia-ctk 'runtime' 'configure' '--runtime=docker'
