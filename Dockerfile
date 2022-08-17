FROM 10.115.10.120:8082/alpine:local
#
RUN apk update --no-cache \
 && apk add --no-cache git openjdk11 maven docker
#
CMD ["/bin/sh", ""]