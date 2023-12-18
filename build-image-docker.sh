#! /usr/bin/env bash

if docker images | grep -q raspberrypi-build
then
    echo Raspberry pi cross-compile image found."
    echo "Deleting image..."
    docker rmi raspberrypi-build
    if [[ $? -ne 0 ]]
    then
        exit $?
    fi
fi

echo "Creating new image..."
docker build --build-arg UID=$(id -u) -t raspberrypi-build docker-crosscompile/.

echo "Completed."
