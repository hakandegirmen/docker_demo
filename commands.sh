#!/usr/bin/env bash

# DOCKER COMMANDS

# To build the image
#docker build -t demo_test:v1 .

# To run the image in a container
#docker run --name docker_demo -v /Users/jj/Documents/Projects/demo/app:/app -p 8080:5000 demo_test:v1

# To stop the container
#docker container stop docker_demo

# To push to Docker Hub
docker tag demo_test:v1 hakangtc/demo_test:v1
docker push hakangtc/demo_test

# to push to AWS
docker tag demo_test:v1 455530355726.dkr.ecr.us-east-2.amazonaws.com/docker_demo:latest
docker push 455530355726.dkr.ecr.us-east-2.amazonaws.com/docker_demo:latest

# To pull an image
docker run hakangtc/demo_test:v1


#docker-compose up web


# get grant docker access to aws
aws ecr get-login
