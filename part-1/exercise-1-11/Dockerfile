# Start from Amazon Corretto OpenJDK image
FROM amazoncorretto:8u412-al2023-jre

# Expose port 8080
EXPOSE 8080

# Set work directory
WORKDIR /usr/src/app

# Copy source to app
COPY . .

RUN ls

# Build the package
RUN ./mvnw package

# Execute the application
CMD java -jar ./target/docker-example-1.1.3.jar