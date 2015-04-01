FROM dockerfile/java:oracle-java8

RUN apt-get update && apt-get install -y python
