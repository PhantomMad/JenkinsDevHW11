FROM 10.115.10.120:8082/alpine:local
#
ENV DCONF='/docker'
#
RUN apk update --no-cache \
 && apk add --no-cache git openssh wget bash openjdk11 maven docker
#
RUN mkdir -p /docker/tomcat \
 && mkdir /docker/project \
 && mkdir /.docker
#
RUN addgroup --gid 117 docsocks \
 && adduser --uid 1000 -G docsocks  --disabled-password jendock
#
COPY tomcat.tar.gz /docker/tomcat
COPY prod/Dockerfile ${DCONF}/Dockerfile
CMD ["mvn"]
#
