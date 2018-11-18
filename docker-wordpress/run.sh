#!/bin/bash

server="$1"

if [ -z "$server" ]
then
echo "No server provided"
echo ""
echo "Usage: run.sh [server]"
exit 0
fi

echo "Preparing setup"
./prereq.sh $server

echo "$server" > inv

# Ansible run
ansible-playbook ansible-bootstrap-ubuntu-16.04.yml -u root -i inv -v
ansible-playbook install-docker.yml -u root -i inv -v
