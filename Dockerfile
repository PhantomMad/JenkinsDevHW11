FROM 10.115.10.120:8082/alpine:local
#
RUN apk update --no-cache \
 && apk add --no-cache git bash openjdk11 maven docker docker-compose
#
RUN mkdir -p /var/lib/docker/hw11/git
COPY Dockerfile_prod /var/lib/docker/hw11/Dockerfile
CMD ["/bin/sh"]