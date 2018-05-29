#!/bin/bash
set -eu

cd $(dirname "$0")

./setup.sh

docker build  -t jenkins-ubuntu:16.04 \
              -f Dockerfile .

echo "Image created."
