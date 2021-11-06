# ubuntu-curl
The ubuntu-curl container has only curl installed. This container can be used in circumstances that you want to run a curl command in a docker container, for example in a build pipeline as one of the steps. 

This image has also been deployed to docker hub: [ensignprojects/ubuntu-curl](https://hub.docker.com/r/ensignprojects/ubuntu-curl)

## build image
```shell
docker build -t ubuntu-compose:latest --build-arg compose_version=1.29.0 .
```

## pull image
```shell
docker pull ensignprojects/ubuntu-curl
```