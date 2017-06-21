#!/bin/bash

#Image associated with the running container
echo
echo 'Checking for the running IGC containers...'
echo
runningContainerImage=$(docker ps -a | grep "igsDocker" | awk '{ print $2 }');

#Removing the running IGC container
if [ ! -z "$runningContainerImage" -a "$runningContainerImage"!=" " ]
then
	echo 'Image associated with the running container: '$runningContainerImage;
	echo
	echo '----- Removing the running IGC container ------';
	docker rm -f 'igsDocker';
	echo '----- Removing the IGC image associated with the container ------';
	docker rmi -f $runningContainerImage;
	echo
else
	echo 'No IGC container is running...'
fi

echo
echo 'Checking for the old IGC images...'
echo
oldImages=$(docker images -a | grep "app_integrate" | awk '{ print $3 }');
if [ ! -z "$oldImages" -a "$oldImages"!=" " ]
then
	docker rmi -f $oldImages;
fi

oldImages=$(docker images -a | grep "ibm_igc" | awk '{ print $3 }');
if [ ! -z "$oldImages" -a "$oldImages"!=" " ]
then
	docker rmi -f $oldImages;
fi

oldImages=$(docker images -a | grep "igc_image" | awk '{ print $3 }');
if [ ! -z "$oldImages" -a "$oldImages"!=" " ]
then
	docker rmi -f $oldImages;
fi

echo
echo 'DONE'
