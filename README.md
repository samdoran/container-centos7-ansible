# CentOS 7 Ansible Test Image #

This is a container for testing Ansible roles.

Build

    docker build -i -t [image tag] -f [dockefile] .

Run

    docker run -e TERM=xterm --rm -i -t [image tag] bash
