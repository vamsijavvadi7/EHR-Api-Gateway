# Use a lightweight Java runtime image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/api-gateway-0.0.1-SNAPSHOT.jar api-gateway.jar

# Expose the port that the API Gateway will use
EXPOSE 8764

# Command to run the API Gateway application
ENTRYPOINT ["java", "-jar", "api-gateway.jar"]
