FROM openjdk:11.0-jdk-slim
COPY . .
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

EXPOSE 8761
CMD ["java", "-jar","/build/libs/registry-service-0.0.1-SNAPSHOT.jar"]