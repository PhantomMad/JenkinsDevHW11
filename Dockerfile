FROM 10.115.10.120:8082/alpine:local
#
ENV DCONF='/docker'
ENV DGIT='${DCONF}/git'
ENV TDISTR='${DCONF}/distr'
#
RUN apk update --no-cache \
 && apk add --no-cache git openssh wget bash openjdk11 maven docker docker-compose
#
RUN mkdir -p /docker/hw11/tomcat \
 && mkdir /docker/hw11/project
#
RUN groupadd --gid 117 docker \
 && useradd -M --uid 1000 docker -g docker
#
COPY tomcat.tar.gz /docker/hw11/tomcat
COPY prod/Dockerfile ${DCONF}/Dockerfile
CMD ["mvn"]
#
