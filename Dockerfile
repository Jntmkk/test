FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY "0.0.1-SNAPSHOT" app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Djasypt.encryptor.password=123456","-Dspring.profiles.active=dev","-jar","app.jar"]
EXPOSE 8090