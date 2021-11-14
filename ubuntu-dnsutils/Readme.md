# ubuntu-dnsutils
The ubuntu-dnsutils container has the package dnsutils installed. This container can be used in circumstances that you want to run one of the commands in the dnsutils package in a docker container, for example in a build pipeline as one of the steps. 

This image has also been deployed to docker hub: [ensignprojects/ubuntu-dnsutils](https://hub.docker.com/r/ensignprojects/ubuntu-dnsutils)

## binaries in the dnsutils package
The ubuntu dnsutils package has the following packages:
| command  | description                               |
|:---------|:------------------------------------------|
| delv     | NS lookup and validation utility          |
| dig      | DNS lookup utility                        |
| host     | DNS lookup utility                        |
| mdig     | DNS pipelined lookup utility              |
| nslookup | query Internet name servers interactively |
| nsupdate | Dynamic DNS update utility                |

## build image
```shell
docker build -t ubuntu-dnsutils:latest .
```

## pull image
```shell
docker pull ensignprojects/ubuntu-dnsutils
```
