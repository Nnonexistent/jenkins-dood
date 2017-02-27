#!/bin/bash

# Pull image from docker hub
docker pull nonexistent/jenkins-dood

# Remove old jenkins container
docker rm -vf jenkins

# Run container
docker run -dt -p 127.0.0.1:49001:8080 \
               -v /var/jenkins:/var/jenkins \
               -v /var/run/docker.sock:/var/run/docker.sock \
               --restart always \
               --name jenkins \
               nonexistent/jenkins-dood
