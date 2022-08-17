FROM 10.115.10.120:8082/alpine:local
#
RUN apk update --no-cache \
 && apk add --no-cache git wget bash openjdk11 maven docker docker-compose
#
ENV TOMCAT='https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.23/bin/apache-tomcat-10.0.23.tar.gz'
#
RUN mkdir -p /var/lib/docker/hw11/git
COPY prod/Dockerfile /var/lib/docker/hw11/Dockerfile
CMD ["/bin/sh"]