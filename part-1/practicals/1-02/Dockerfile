# Start from ubuntu 22.04 image
FROM ubuntu:22.04

# Set working directory
WORKDIR /usr/src/app

# Install curl
RUN apt-get update
RUN apt-get install -y curl

# Copy over script and make executable
COPY script.sh .
RUN chmod +x script.sh

# Run script when container started
ENTRYPOINT [ "./script.sh" ]