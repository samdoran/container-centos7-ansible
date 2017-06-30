# CentOS 7 Ansible Test Image #
[![Docker Automated build](https://img.shields.io/docker/automated/samdoran/centos7-ansible.svg?maxAge=2592000)](https://hub.docker.com/r/samdoran/centos7-ansible/)

This is a container for testing Ansible roles. It includes the latest version of Ansible and is rebuilt regularly.

## Build ##

To build your own version of this container, run:

    docker build -t centos7-ansible .

## Testing a role inside the container ##

To run a role inside the container, you need to run the container with your role mounted inside it. I mount my current role directory as `/etc/ansible/roles/role_under_test` inside the container, but you can call it whatever you like.

    docker run --privileged -d --volume="$(pwd)":/etc/ansible/roles/role_under_test:ro --name ansible-test centos7-ansible /sbin/init

Once your container is running with your role mounted inside it, you can run you test playbook included inside the role. This is a simple playbook that just runs `role_under_test` against `localhost`.

    docker exec -t ansible-test ansible-playbook ansible-playbook /etc/ansible/roles/role_under_test/tests/test.yml

You can attach to the running container by using `docker exec`

    docker exec -i -t ansible-test bash

Once you are done testing, you can stop and remove the container.

    docker stop ansible-test
    docker rm ansible-test
