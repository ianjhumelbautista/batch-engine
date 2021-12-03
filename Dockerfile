FROM openjdk:8-jdk-alpine

COPY target/*.jar app.jar

ENV PROFILE loc

ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=${PROFILE}", "/app.jar"]