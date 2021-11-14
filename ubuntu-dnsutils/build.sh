#!/usr/bin/env bash

date_tag=$(date +%Y%m%d)

docker build --pull \
             -q \
             -t ${1}ubuntu-dnsutils:latest \
             -t ${1}ubuntu-dnsutils:$date_tag \
             $(dirname $(realpath $0))

docker push -q ${1}ubuntu-dnsutils:latest
docker push -q ${1}ubuntu-dnsutils:$date_tag
