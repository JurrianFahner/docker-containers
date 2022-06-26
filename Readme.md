# Readme
This repo contains dockerfiles of images that can be of great use within continuous workloads. The images that can be created with these dockerfiles adhere to the unix philosophy: Make each program do one thing well. 

All images are based on ubuntu, because it can easily be used by a human. By default syntax highlighting is enabled when vim is installed. Also colors are enabled when listing files etc.

| tool                          | documentation   | description                         |
| :---------------------------- | :-------------- | :---------------------------------- |
| [ubuntu-arch-diagrams][suad1] | [readme][suad2] | image with graphiz and pandoc       |
| [ubuntu-compose][suco1]       | [readme][suco2] | image with docker-compose installed |
| [ubuntu-curl][sucu1]          | [readme][sucu2] | image with curl installed           |
| [ubuntu-dnsutils][sudn1]      | [readme][sudn2] | image with dnsutils installed       |


## prerequisites
In order to build all docker containers, the following packages are needed: 
- docker
- curl
- jq

## build all containers
Run command below to install all docker containers: 
```bash
./build-all.sh docker.io/ensignprojects/
```

[suad1]: https://hub.docker.com/r/ensignprojects/ubuntu-arch-diagrams
[suad2]: ./ubuntu-arch-diagrams
[suco1]: https://hub.docker.com/r/ensignprojects/ubuntu-curl
[suco2]: ./ubuntu-curl
[sucu1]: https://hub.docker.com/r/ensignprojects/ubuntu-compose
[sucu2]: ./ubuntu-compose
[sudn1]: https://hub.docker.com/r/ensignprojects/ubuntu-dnsutils
[sudn2]: ./ubuntu-dnsutils

