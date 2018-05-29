#!/bin/bash
set -eu

cd $(dirname "$0")

if [ ! -z "$(docker ps -q -a -f name=jenkins-ubuntu$)" ]; then
    docker rm -f jenkins-ubuntu
fi

docker create \
    -it \
    --privileged \
    --name jenkins-ubuntu \
    --hostname jenkins-ubuntu \
    jenkins-ubuntu:16.04

echo "Container created."
