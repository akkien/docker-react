#!/bin/bash

# print outputs and exit on first failure
set -xe

if [ $TRAVIS_BRANCH == "master" ] ; then

    # # setup ssh agent, git config and remote
    # eval "$(ssh-agent -s)"
    # ssh-add ~/.ssh/travis_rsa
    # git remote add deploy "travis@webhost.planecq.xyz:/var/www/planecq.com"
    # git config user.name "Le Trung Kien"
    # git config user.email "akkien99@gmail.com"

    # # commit compressed files and push it to remote
    # rm -f .gitignore
    # git add .
    # git status # debug
    # git commit -m "Deploy compressed files"
    # git push -f deploy HEAD:master
    ls -a
    whoami
    yarn start

else
    echo "No deploy script for branch '$TRAVIS_BRANCH'"
fi