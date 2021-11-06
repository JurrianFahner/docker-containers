#!/usr/bin/env bash
set -o nounset

if [ "${UID}" -ne 0 ]
then
    echo "This script needs to be run as root"
    exit 2
fi

: ${1? "Usage: $0 DOCKER_REGISTRY_NAME_URL e.g. ensignprojects/"}

echo "Build all containers"

echo "-- ubuntu-compose"
./ubuntu-compose/build.sh $1 "1.29.0"

echo "-- ubuntu-curl"
./ubuntu-curl/build.sh $1
