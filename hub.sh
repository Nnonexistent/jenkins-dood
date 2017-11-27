#!/bin/bash

# Pull image from docker hub
docker pull nonexistent/jenkins-dood

# Remove old jenkins container
docker rm jenkins

# Run container
docker run -dt -p 127.0.0.1:49001:8080 \
               -v jenkins_home:/var/jenkins_home \
               -v /var/run/docker.sock:/var/run/docker.sock \
               --restart always \
               --name jenkins \
               nonexistent/jenkins-dood
