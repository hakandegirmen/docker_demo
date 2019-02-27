#!/usr/bin/env bash

# DOCKER COMMANDS

# To build the image
docker build -t demo_test:v1 .

# To run the image in a container
docker run --name docker_demo -v /Users/jj/Documents/Projects/demo/app:/app -p 8080:5000 demo_test:v1

# To stop the container
docker container stop docker_demo

# To push to Docker Hub
docker tag demo_test:v1 hakangtc/docker-simpleapp:v1
docker push hakangtc/docker-simpleapp:v1

# To pull an image
docker pull hakangtc/docker-simpleapp:v1

# Run container with docker-compose
docker-compose up web