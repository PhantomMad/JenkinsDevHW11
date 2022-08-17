FROM 10.115.10.120:8082/alpine:local
#
RUN apk update --no-cache \
 && apk add --no-cache openjdk11
#
RUN mkdir /opt/tomcat
COPY tomcat.tar.gz .
RUN tar xpvf tomcat.tar.gz -C /opt/tomcat --strip-components=1
#
ENV CATALINA_PID=/opt/tomcat/temp/tomcat.pid
ENV CATALINA_OPTS="-Xms512M -Xmx1024M -server -XX:+UseParallelGC"
#
CMD ["/opt/tomcat/bin/catalina.sh", "run"]