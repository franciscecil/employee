#!/bin/sh

export APP_IMAGE=com.fcr.employee

./gradlew build -x test

if [ $? != 0 ]
then
	exit
fi
echo "building ${APP_IMAGE}"
echo "docker build . -t ${APP_IMAGE} ..."
docker build . -t ${APP_IMAGE}

docker run -e "SPRING_PROFILES_ACTIVE=dev" -p 8082:8081 -t com.fcr.employee

