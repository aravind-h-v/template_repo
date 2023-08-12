#!/usr/bin/sh
docker 'run' '--rm' '-it' '--runtime=nvidia' '--gpus' 'all' 'getting-started' 'fish'
