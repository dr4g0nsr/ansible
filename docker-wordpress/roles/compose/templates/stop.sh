#!/bin/bash

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

# Remove all images
#docker rmi $(docker images -q)

