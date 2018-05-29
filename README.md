# Jenkins on Docker

This repository describes how to setup, configurate and run Jenkins on docker.

## Table of Contents

* Setup
* Configuration
* Running Jenkins

## Setup

To setup Jenkins on Docker we will follow the procedure:

* Create a Docker Container
* Install Jenkins

### Create a Docker Container

In this section will be listed commands to create a docker container with Ubuntu 16.04 base image.

The following commands utilize files provided on this repository.

```sh
# Create the image and the container
./build_image.sh
./create_container.sh

# Start the container
./start_container.sh

# Press ENTER to see the prompts
```

### Install Jenkins

Assuming a Ubuntu 16.04 environment.

Follow the procedure to install Jenkins:

> **Reference**
>
> [Jenkins.io: Installing Jenkins on Linux Debian/Ubuntu](https://jenkins.io/doc/book/installing/#debian-ubuntu)

```sh
# Download and add Jenkins package key
cd ~/
wget  --quiet \
      --output-document=jenkinskey \
      https://pkg.jenkins.io/debian/jenkins.io.key
sudo apt-key add jenkinskey
rm jenkinskey
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Install Jenkins
sudo apt-get update
sudo apt-get install jenkins

```
Jenkins will be launched as a daemon on start.

> **Note**
>
> You can see `/etc/init.d/jenkins` for more details.
