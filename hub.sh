#!/bin/bash

# Pull image from docker hub
docker pull nonexistent/jenkins-dood

# Run container
docker run -dt -p 49001:8080 -v /var/jenkins:/var/jenkins_home \
                             -v /var/run/docker.sock:/var/run/docker.sock \
                             --restart always \
                             --name jenkins \
                             nonexistent/jenkins-dood
