FROM alpine-java:base
MAINTAINER pysga1996
WORKDIR /opt/phi-config-service
COPY ./phi-config-service-0.0.1-SNAPSHOT.jar /opt/phi-config-service
ENTRYPOINT ["/usr/bin/java"]
CMD ["-Dspring.profiles.active=poweredge", "-jar", "./phi-config-service-0.0.1-SNAPSHOT.jar"]
VOLUME /opt/phi-config-service
EXPOSE 8030