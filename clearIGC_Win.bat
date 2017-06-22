@Echo OFF

echo.
echo Checking for the running IGC containers...
echo. 
setlocal EnableDelayedExpansion

for /F "tokens=2" %%A in ('"docker ps -a | find "igsDocker""') DO (set taggedImage=%%A)

IF %taggedImage% NEQ '' (
	
	echo Image associated with the running container: %taggedImage%
	echo.
	echo ----- Removing the running IGC container ------
	echo.
	docker rm -f igsDocker
	echo '----- Removing the IGC image associated with the container ------';
	echo.
	docker rmi -f %taggedImage%
) ELSE (
	echo No IGC container is running...
	echo.
	)

echo Checking for the old IGC images...
echo.
for /F "tokens=3" %%B in ('"docker images | find "ibm_igc""') DO (
	set taggedImage=%%B
	docker rmi -f !taggedImage!
	)
for /F "tokens=3" %%C in ('"docker images | find "app_integrate""') DO (
	set taggedImage=%%C
	docker rmi -f !taggedImage!
	)
for /F "tokens=3" %%D in ('"docker images | find "hello""') DO (
	set taggedImage=%%D
	docker rmi -f !taggedImage!
)
echo 'DONE'