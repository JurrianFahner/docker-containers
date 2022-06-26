# how to render diagrams
Perform the following steps:
1. install [graphiz](https://www.graphviz.org)
2. install [pycharm](https://www.jetbrains.com/pycharm/)
3. install [python 3.x](https://www.python.org/)
4. install packages in [requirements.txt](docker/requirements.txt)


The docker image that is build in this repo is manually pushed to docker hub, 
the image can be found by this reference: `ensignprojects/ubuntu-arch-diagrams`





# ubuntu-arch-diagrams
The ubuntu-arch-diagrams container has the package [graphiz](https://www.graphviz.org) installed. This container can be used in circumstances that you want to generate documentation for example when to create pdfs for architecture diagrams (can be achieved with [pandoc](https://pandoc.org/)), for example in a build pipeline as one of the steps. 

Why is this image so big? That's because it is possible to generate also a pdf with pandoc, so Latex is included to make that possible. Latex needs a lot desktop packages, which leads to an heavy container.

This image has also been deployed to docker hub: [ensignprojects/ubuntu-arch-diagrams](https://hub.docker.com/r/ensignprojects/ubuntu-arch-diagrams)


## build image
```shell
docker build -t ubuntu-arch-diagrams:latest .
```

## pull image
```shell
docker pull ensignprojects/ubuntu-arch-diagrams
```
