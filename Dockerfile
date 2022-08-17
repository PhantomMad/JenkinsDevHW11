FROM 10.115.10.120:8082/alpine:local
#
RUN apk update --no-cache \
 && apk add --no-cache git openjdk11 maven docker docker-compose
#
#RUN mkdir /var/lib/docker/hw11
#COPY Dockerfile_prod /var/lib/docker/hw11/Dockerfile
CMD ["/bin/sh"]