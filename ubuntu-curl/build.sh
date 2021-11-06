#!/usr/bin/env bash

date_tag=$(date +%Y%M%d)

docker build --pull \
             -q \
             -t ${1}ubuntu-curl:latest \
             -t ${1}ubuntu-curl:$date_tag \
             $(dirname $(realpath $0))

docker push -q ${1}ubuntu-compose:latest
docker push -q ${1}ubuntu-compose:$date_tag
