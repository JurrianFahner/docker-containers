# Readme
This repo contains dockerfiles of images that can be of great use within continuous workloads. The images that can be created with these dockerfiles adhere to the unix philosophy: Make each program do one thing well. 

All images are based on ubuntu, because it can easily be used by a human. By default syntax highlighting is enabled when vim is installed. Also colors are enabled when listing files etc.

| tool           | documentation      | description                         |
|:---------------|:-------------------|-------------------------------------|
| ubuntu-curl    | [readme][0]        | image with curl installed           |
| ubuntu-compose | [readme][1]        | image with docker-compose installed |

[0]: ./ubuntu-curl
[1]: ./ubuntu-compose

## build-all
In order to build all docker containers, the following packages are needed: 
- docker
- curl
- jq