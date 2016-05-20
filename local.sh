#!/bin/bash


# Build image
docker build --pull -t jenkins_dood .

# Remove old jenkins container
docker rm -vf jenkins

# Run container
docker run -dt -p 49001:8080 -v /var/jenkins:/var/jenkins_home \
                             -v /var/run/docker.sock:/var/run/docker.sock \
                             --restart always \
                             --name jenkins \
                             jenkins_dood
