# the base image
FROM openjdk:8-jdk-alpine

# Set work directory
WORKDIR /opt

# Copy the jar
COPY target/maventest-0.0.1-SNAPSHOT.jar /opt/app.jar

# Execute the jar file
ENTRYPOINT exec java -jar /opt/app.jar