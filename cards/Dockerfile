# Start with a base image containing Java
FROM openjdk:17-slim as build

# Owner
MAINTAINER microServiceBank

# Add the jar to the container
COPY build/libs/cards-0.0.1-SNAPSHOT.jar cards-0.0.1-SNAPSHOT.jar

# Execute the application
ENTRYPOINT ["java","-jar","cards-0.0.1-SNAPSHOT.jar"]
