# Use a base image with Java 21 on Alpine Linux
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the packaged jar file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Expose the port your application runs on
EXPOSE 9090

# Command to run your application
CMD ["java", "-jar", "demo.jar"]
