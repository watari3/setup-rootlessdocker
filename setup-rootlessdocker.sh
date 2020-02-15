#!/bin/bash

curl -fsSL https://get.docker.com/rootless | sh
echo 'export PATH=${HOME}/bin:$PATH' >> ~/.bash_profile
echo 'export PATH=~$PATH:/sbin' >> ~/.bash_profile
echo 'export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock' >> ~/.bash_profile
source ~/.bash_profile
