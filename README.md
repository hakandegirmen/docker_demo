###Hakan
- Show and run simple flask app
    - Talk about what you need to run it
- Go over the Dockerfile
- Go over the basic commands
- Build and run the the container
- Tag and push the container

### Faizan

- Pull the repository and run the app using docker-compose


Docker preparation commands
1) Stop all containers
docker stop $(docker ps -aq)


2) Remove all containers
docker rm $(docker ps -aq)


3) Remove all Images
docker rmi $(docker images -q)