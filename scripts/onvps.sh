#!/bin/bash

# print outputs and exit on first failure
set -xe
ls /home
whoami
docker run -d -p 3000:3000 akkien/docker-react