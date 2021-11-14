# Readme
This repo contains dockerfiles of images that can be of great use within continuous workloads. The images that can be created with these dockerfiles adhere to the unix philosophy: Make each program do one thing well. 

All images are based on ubuntu, because it can easily be used by a human. By default syntax highlighting is enabled when vim is installed. Also colors are enabled when listing files etc.

| tool               | documentation      | description                         |
|:-------------------|:-------------------|-------------------------------------|
| ubuntu-compose[2]  | [readme][3]        | image with docker-compose installed |
| ubuntu-curl[0]     | [readme][1]        | image with curl installed           |
| ubuntu-dnsutils[4] | [readme][5]        | image with dnsutils installed       |


[0]: https://hub.docker.com/r/ensignprojects/ubuntu-curl
[1]: ./ubuntu-curl
[2]: https://hub.docker.com/r/ensignprojects/ubuntu-compose
[3]: ./ubuntu-compose
[4]: https://hub.docker.com/r/ensignprojects/ubuntu-dnsutils
[5]: ./ubuntu-dnsutils


## build-all
In order to build all docker containers, the following packages are needed: 
- docker
- curl
- jq