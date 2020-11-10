FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 668
EXPOSE 669
EXPOSE 670
ENTRYPOINT ["java","-jar","/app.jar"]