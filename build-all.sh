#!/usr/bin/env bash
set -o nounset

if [ "${UID}" -ne 0 ]
then
    echo "This script needs to be run as root"
    exit 2
fi

: ${1? "Usage: $0 DOCKER_REGISTRY_NAME_URL e.g. docker.io/ensignprojects/"}

echo "Build all containers"

date_tag=$(date +%Y%m%d)

for folder in $(ls -1 | grep ubuntu) ; do
    echo "-- ${folder}"
    ./${folder}/build.sh $1

    docker push -q ${1}${folder}:latest
    docker push -q ${1}${folder}:$date_tag
done
