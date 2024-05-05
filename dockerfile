# Use a base Docker image that supports Node.js and npm
FROM node:latest

# Set the working directory within the container
WORKDIR /app

# Copy your Nest.js backend files into the Docker container
COPY . /app

# Install dependencies
RUN npm install

# Expose the port your Nest.js application is running on
EXPOSE 3000

# Command to run your Nest.js application
CMD ["npm", "start"]