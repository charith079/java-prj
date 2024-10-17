# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /app
COPY app.java .

# Compile the Java code
RUN javac app.java

# Run the Java program
CMD ["java", "app"]
