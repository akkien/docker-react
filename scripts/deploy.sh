#!/bin/bash

# print outputs and exit on first failure
set -xe

if [ $TRAVIS_BRANCH == "master" ] ; then

    whoami
    echo "$DOCKER_USER"
    ssh $REMOTE_USER@$REMOTE_HOST 'bash -s' < ./scripts/onvps.sh

else
    echo "No deploy script for branch '$TRAVIS_BRANCH'"
fi