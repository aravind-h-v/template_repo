#!/usr/bin/sh
docker 'run' '--rm' '-it' '--runtime=nvidia' '--gpus' 'all' 'cuda_anaconda' 'fish'
