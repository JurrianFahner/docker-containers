#!/usr/bin/env bash

docker_compose_version=$(curl -sL https://api.github.com/repos/docker/compose/releases/latest | jq -r ".tag_name")

date_tag=$(date +%Y%m%d)

docker build --pull \
             -q \
             -t ${1}ubuntu-compose:latest \
             -t ${1}ubuntu-compose:$date_tag \
             --build-arg compose_version=$docker_compose_version \
             $(dirname $(realpath $0))

docker push -q ${1}ubuntu-compose:latest
docker push -q ${1}ubuntu-compose:$date_tag
