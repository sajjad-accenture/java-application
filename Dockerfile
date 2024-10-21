# Use an official OpenJDK runtime as a parent image
FROM openjdk:21-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the host to the container
COPY target/helloworld-1.0-SNAPSHOT.jar /app/helloworld.jar

# Run the application
CMD ["java", "-jar", "helloworld.jar"]