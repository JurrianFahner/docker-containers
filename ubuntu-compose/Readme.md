# ubuntu-compose
Ubuntu-compose has only docker-compose installed to communicate with the docker socket. Please be aware to mount the docker socket properly in the container to properly use [docker-compose](https://github.com/docker/compose).

This image has also been deployed to docker hub: [ensignprojects/ubuntu-compose](https://hub.docker.com/r/ensignprojects/ubuntu-compose)

## build image
```shell
docker build -t ubuntu-compose:latest --build-arg compose_version=1.29.0 .
```

## pull image
```shell
docker pull ensignprojects/ubuntu-compose
```
