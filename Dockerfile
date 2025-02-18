# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the WAR file into the container
COPY target/MyWebApp.war /app/MyWebApp.war

# Expose the port your app runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "/app/MyWebApp.war"]
