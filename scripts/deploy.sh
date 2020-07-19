#!/bin/bash

# print outputs and exit on first failure
set -xe

if [ $TRAVIS_BRANCH == "master" ] ; then

    whoami

    docker login -u="$DOCKER_USER" -p="$DOCKER_PASS"
    docker build -t $DOCKER_IMAGE .
    docker push $DOCKER_IMAGE
    
    ssh $REMOTE_USER@$REMOTE_HOST 'bash -s' < ./scripts/onvps.sh

else
    echo "No deploy script for branch '$TRAVIS_BRANCH'"
fi