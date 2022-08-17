FROM alpine:latest
#
RUN apk update --no-cache \
 && apk upgrade --no-cache
# && apk add --no-cache git openjdk11 maven docker
#
CMD ["/bin/sh", ""]