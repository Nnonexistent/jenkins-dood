#!/bin/bash


# Build image
docker build --pull -t jenkins-dood .

# Stop & remove old jenkins container
docker stop jenkins
docker rm jenkins

# Run container
docker run -dt -p 127.0.0.1:49001:8080 \
               -v jenkins_home:/var/jenkins_home \
               -v /var/run/docker.sock:/var/run/docker.sock \
               --restart always \
               --name jenkins \
               jenkins-dood
