FROM alpine-java:base
MAINTAINER pysga1996
WORKDIR /app
RUN mkdir -p /opt
COPY ./target/phi-config-service-0.0.1-SNAPSHOT.jar /opt
ENTRYPOINT ["/usr/bin/java"]
CMD ["-Dspring.profiles.active=k8s", "-jar", "/opt/phi-config-service-0.0.1-SNAPSHOT.jar"]
VOLUME /app
EXPOSE 80