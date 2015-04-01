#
# PrestoDB Docker image
#
# https://github.com/wmorin/docker-prestodb
#

FROM dockerfile/java:oracle-java8
MAINTAINER Willy Morin <willy.morin@gmail.com>

RUN apt-get update && apt-get install -y python

ADD https://repo1.maven.org/maven2/com/facebook/presto/presto-server/0.100/presto-server-0.100.tar.gz /tmp/presto.tar.gz

RUN mkdir /opt/presto
RUN tar -zxvf /tmp/presto.tar.gz -C /opt/presto --strip-components=1
RUN rm /tmp/presto.tar.gz

COPY config/* /opt/presto/etc/

ENTRYPOINT ["/opt/presto/bin/launcher", "run"]

EXPOSE 8080