# Base on golang 1.6.4-alpine image
FROM golang:1.6.4

# Set container port
EXPOSE 8080

# Set working directory
WORKDIR /usr/src/app

# Set GoPath
ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com
ENV GOPATH=/usr/local/go

# Copy source
COPY . .

#RUN go mod download && go mod verify

# Build project
#RUN go build

# Test project
#RUN go test ./...

CMD /bin/sh