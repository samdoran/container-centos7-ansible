# CentOS 7 Ansible Test Image #
[![Docker Automated build](https://img.shields.io/docker/automated/samdoran/centos7-ansible.svg?maxAge=2592000)](https://hub.docker.com/r/samdoran/centos7-ansible/)

This is a container for testing Ansible roles.

## Build ##

    docker build -t [image tag]

## Run ##

    docker run -e TERM=xterm --rm -i -t samdoran/centos7-ansible bash
