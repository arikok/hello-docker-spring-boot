FROM alpine-java:base
COPY ./target/hello-docker-spring-boot-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
RUN sh -c 'touch hello-docker-spring-boot-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java","-jar","hello-docker-spring-boot-0.0.1-SNAPSHOT.jar"]