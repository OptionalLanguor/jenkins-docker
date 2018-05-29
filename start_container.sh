#!/bin/bash
set -eu

docker start jenkins-ubuntu
docker attach  jenkins-ubuntu
