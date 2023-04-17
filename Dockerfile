# Use an OpenJDK 8 base image
FROM openjdk:8-jre-alpine

# Set the working directory
WORKDIR /app

# Copy the Eureka Server jar file to the container
COPY target/eureka-server-nishant.jar .

# Expose the default Eureka Server port (8761)
EXPOSE 8761

ENV HOSTNAME=eureka-server-nishant

# Start the Eureka Server when the container is run
CMD ["java", "-jar", "eureka-server-nishant.jar"]