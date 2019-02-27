#!/bin/sh
export APP_IMAGE=com.fcr.employee
docker rm $(docker stop $(docker ps -a -q --filter ancestor=${APP_IMAGE} --format="{{.ID}}"))
docker image prune -a -f