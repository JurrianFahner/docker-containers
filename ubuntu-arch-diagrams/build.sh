#!/usr/bin/env bash

date_tag=$(date +%Y%m%d)

docker build --pull \
             -q \
             -t ${1}ubuntu-arch-diagrams:latest \
             -t ${1}ubuntu-arch-diagrams:$date_tag \
             $(dirname $(realpath $0))
