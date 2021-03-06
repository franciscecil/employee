#!/bin/sh

# Enables application to take PID 1 and receive SIGTERM sent by Docker stop command.
# See here https://docs.docker.com/engine/reference/builder/#/entrypoint
exec java -Xms300m -Xmx300m -Dlogging.level.ROOT=ERROR -jar /app.jar