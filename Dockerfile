FROM maven:3.8.6-openjdk-18-slim AS build
COPY . .
RUN mvn clean package -DskipTests

#
# Package stage
#
FROM openjdk:18-jdk-slim
COPY --from=build /target/training_docker-0.0.1-SNAPSHOT.jar training_docker.jar
# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-jar","training_docker.jar"]