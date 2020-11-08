FROM openjdk:8-jdk-alpine
VOLUME /User/mac/docker/eureka
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/app.jar","--spring.profiles.active=test","--server.port=8761","> /log/app.log"]