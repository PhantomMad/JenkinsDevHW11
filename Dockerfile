FROM 10.115.10.120:8082/alpine:local
#
ENV DCONF='/var/lib/docker/hw11'
ENV DGIT='${DCONF}/git'
ENV TDISTR='${DCONF}/distr'
#
RUN apk update --no-cache \
 && apk add --no-cache git wget bash openjdk11 maven docker
#
RUN mkdir -p /var/lib/docker/hw11/git
#
COPY prod/Dockerfile ${DCONF}/Dockerfile
#
CMD ["/bin/bash"]