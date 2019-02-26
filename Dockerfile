FROM openjdk:8-jre-alpine
##RUN apk add --no-cache bash
ADD build/libs/app.jar app.jar
COPY scripts/entrypoint.sh entrypoint.sh
RUN chmod 555 entrypoint.sh
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["./entrypoint.sh"]