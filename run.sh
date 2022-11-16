#!/bin/bash

if [ "$1" == "stop" ]; then
    # sudo docker rm -f $(sudo docker ps -a -q)
    docker-compose kill
    exit 0
fi

docker-compose up -d --no-build --remove-orphans 
