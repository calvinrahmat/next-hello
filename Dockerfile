# Use the official Node.js 16 image as a parent image
FROM node:16

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the application for production
RUN npm run build

# Set the command to start the application in development mode
CMD ["npm", "run", "dev"]
