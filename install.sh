#!/usr/bin/sh
cd "$('dirname' '--' "${0}")"
pwd

'./install_apt.sh'

'./download_anaconda.sh'

'./setup_ctk.sh'

'./setup_docker.sh'

'./build_docker.sh'
