FROM 10.115.10.120:8082/alpine:local
#

RUN apk update --no-cache \
 && apk add --no-cache openjdk11
#
RUN mkdir /opt/tomcat
WORKDIR  /opt/tomcat
ADD .distr/tomcat.tar.gz .
#
ENV CATALINA_PID=/opt/tomcat/temp/tomcat.pid
ENV CATALINA_OPTS="-Xms512M -Xmx1024M -server -XX:+UseParallelGC"
#
CMD ["/opt/tomcat/bin/catalina.sh", "run"]