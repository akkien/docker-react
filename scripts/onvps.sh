#!/bin/bash

# print outputs and exit on first failure
set -xe
whoami
echo "$DOCKER_USER"
# docker login -u="$DOCKER_USER" -p="$DOCKER_PASS"

# if [ "$(docker ps -q -f name=reactjs)" ]; then
#   docker stop reactjs
#   docker rm reactjs
#   if [ "$(docker ps -aq -f status=exited -f name=reactjs)" ]; then
#       docker rm reactjs
#   fi  
# fi

# docker run -d -p 80:80 --name reactjs akkien/docker-react