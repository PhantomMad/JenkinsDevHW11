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
RUN addgroup --gid 117 dsocks \
 && adduser --uid 1000 -G dsocks  --disabled-password mudocker
#
COPY tomcat.tar.gz /docker/hw11/tomcat
COPY prod/Dockerfile ${DCONF}/Dockerfile
CMD ["mvn"]
#
