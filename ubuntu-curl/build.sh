#!/usr/bin/env bash

date_tag=$(date +%Y%m%d)

docker build --pull \
             -q \
             -t ${1}ubuntu-curl:latest \
             -t ${1}ubuntu-curl:$date_tag \
             $(dirname $(realpath $0))
