#!/bin/bash

# print outputs and exit on first failure
set -xe

whoami

docker login

if [ "$(docker ps -q -f name=reactjs)" ]; then
  docker stop reactjs
  docker rm reactjs
  if [ "$(docker ps -aq -f status=exited -f name=reactjs)" ]; then
      docker rm reactjs
  fi  
fi
exit 80
# docker pull akkien/docker-react
# docker run -d -p 80:80 --name reactjs akkien/docker-react