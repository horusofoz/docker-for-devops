# Start from lightwight node image with low security vulneratbilities
FROM node:16.20.2-alpine3.18

# Expose container port
EXPOSE 5000

# Set work  directory
WORKDIR /usr/src/app

# Copy source to working directory
COPY . .

# Have to leave react app environment variables in Dockerfile
# React limitation
# Set Environmental variables (Moved to end to avoid so many npm rebuilds)
ENV REACT_APP_BACKEND_URL=http://localhost:8080

# Check install
RUN node -v && npm -v

# Install packages
RUN npm install

# Build the static files
RUN npm run build

# Install serve package
RUN npm install -g serve

# Serve the static files
CMD serve -s -l 5000 build