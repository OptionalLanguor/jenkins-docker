FROM ubuntu:16.04

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    --no-install-recommends \
        apt-utils \
        sudo \

RUN useradd -m -G sudo jenkins-docker && \
    passwd -d jenkins-docker

USER jenkins-docker
WORKDIR /home/jenkins-docker
ENV BASH_ENV /home/jenkins-docker/.profile
SHELL ["/bin/bash", "-c"]

CMD ["/bin/bash", "--login"]
