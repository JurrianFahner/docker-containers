#!/usr/bin/env bash

date_tag=$(date +%Y%m%d)

docker build --pull \
             -q \
             -t ${1}ubuntu-dig:latest \
             -t ${1}ubuntu-dig:$date_tag \
             $(dirname $(realpath $0))

docker push -q ${1}ubuntu-dig:latest
docker push -q ${1}ubuntu-dig:$date_tag
