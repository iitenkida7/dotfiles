#!/bin/bash

boot2docker init

boot2docker up
boot2docker status


#export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2376
export DOCKER_CERT_PATH=/Users/takeshi/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1


#docker pull centos:latest
#docker run -t -i -d --name centos6 centos:centos6 /bin/bash
