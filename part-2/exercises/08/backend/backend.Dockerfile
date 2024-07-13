# Base on golang 1.16
FROM golang:1.16

# Set container port
EXPOSE 8080

# Set working directory
WORKDIR /usr/src/app

# MOVED TO DOCKER COMPOSE
# Set Environmental variables
#ENV REQUEST_ORIGIN=http://localhost:5000
#ENV REDIS_HOST=redis

# Copy source
COPY . .

# Build project
RUN go build

# Test project
RUN go test ./...

# Execute the server
CMD ./server