# This is the Docker file for ShowDate project.

# Pull base image which gives all required tools & libraries.
FROM eclipse-temurin:17-jdk-alpine

# Create folder inside the container where app code will be stored.
WORKDIR /app

#Copy the source code from the HOST machine to container.
COPY /ShowDate.java /app/ShowDate.java

# Compile the application / project code.
RUN javac ShowDate.java

# Run the application / project.
CMD ["java", "ShowDate"]