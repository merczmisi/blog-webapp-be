FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the .jar file from the local machine to the working directory in the container
# Note: You should adjust the path according to where the .jar file is stored in the pipeline.
COPY target/backend-0.0.1-SNAPSHOT.jar /app/backend-0.0.1-SNAPSHOT.jar

# Set the entry point for the container to run the .jar file
ENTRYPOINT ["java", "-jar", "/app/backend-0.0.1-SNAPSHOT.jar"]

# Expose port 8080 (or any port your application uses)
EXPOSE 8080
