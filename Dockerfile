# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port that the app listens on
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]
