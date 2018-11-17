#!/bin/bash

ansible-playbook ansible-bootstrap-ubuntu-16.04.yml -u root -i inv -v

ansible-playbook install-docker.yml -u root -i inv -v
