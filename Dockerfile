FROM openjdk:8-alpine

#Required for staring application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar

WORKDIR $PROJECT_HOME

CMD ["java", "-Dspring.data.mongodb.url=mongodb://mongo:27017/spring-momgo","Djava.security.egd=fill
