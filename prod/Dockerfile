FROM 10.115.10.120:8082/alpine:local
#
ENV TOMCAT='apache-tomcat-10.0.23.tar.gz'
#
RUN apk update --no-cache \
 && apk add --no-cache openjdk11 wget
#
RUN mkdir /opt/tomcat
WORKDIR  /opt/tomcat
ADD ${TOMCAT} .
#
CMD ["/bin/sh"]