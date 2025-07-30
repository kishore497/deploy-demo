# Start from a lightweight Java image
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/*.jar ./app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Command to run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]