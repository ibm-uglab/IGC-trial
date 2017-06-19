#!/bin/bash

#Image associated with the running container
runningContainerImage=$(docker ps -a | grep "igsDocker" | awk '{ print $2 }');
echo 'Image associated with the running container: '$runningContainerImage;
#Removing thr running IGC container
echo '----- Removing the running IGC container ------';
docker rm -f 'igsDocker';
echo '----- Removing the IGC image associated with the container ------';
docker rmi -f $runningContainerImage;
