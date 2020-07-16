#!/bin/bash

# print outputs and exit on first failure
set -xe

if [ $TRAVIS_BRANCH == "master" ] ; then

    ssh $REMOTE_USER@$REMOTE_HOST
    ls /home
    docker run -d -p 3000:3000 akkien/docker-react

else
    echo "No deploy script for branch '$TRAVIS_BRANCH'"
fi