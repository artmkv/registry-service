FROM openjdk:11.0-jdk-slim
COPY . .
EXPOSE 8761
CMD ["java", "-jar","/build/libs/registry-service-0.0.1-SNAPSHOT.jar"]