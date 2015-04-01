FROM dockerfile/java:oracle-java8

RUN apt-get update && apt-get install -y python

ADD https://repo1.maven.org/maven2/com/facebook/presto/presto-server/0.100/presto-server-0.100.tar.gz /tmp/presto.tar.gz

RUN mkdir /opt/presto
RUN tar -zxvf /tmp/presto.tar.gz -C /opt/presto --strip-components=1
RUN rm /tmp/presto.tar.gz
