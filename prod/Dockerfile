FROM 10.115.10.120:8082/alpine:local
#
RUN apk update --no-cache \
 && apk add --no-cache openjdk11
#
COPY ./tomcat/ .
RUN mkdir /opt/tomcat \
 && tar xpvf tomcat.tar.gz -C /opt/tomcat --strip-components=1
COPY ./project/ /opt/tomcat/webapps/
RUN rm -f tomcat.tar.gz \
#
ENV CATALINA_PID=/opt/tomcat/temp/tomcat.pid
ENV CATALINA_OPTS="-Xms512M -Xmx1024M -server -XX:+UseParallelGC"
#
EXPOSE 8080
#
CMD ["/opt/tomcat/bin/catalina.sh", "run"]