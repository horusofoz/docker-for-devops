# Base on golang 1.16
FROM golang:1.16

# Set container port
EXPOSE 8080

# Set working directory
WORKDIR /usr/src/app

# Set Environmental variables
ENV REQUEST_ORIGIN=http://localhost:5000

# Copy source
COPY . .

# Build project
RUN go build

# Test project
RUN go test ./...

# Execute the server
CMD ./server