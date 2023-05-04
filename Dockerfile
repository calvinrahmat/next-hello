# Use the official Node.js 16 image as a parent image
FROM node:16

# Set the working directory to /app
WORKDIR /app

COPY . ./
RUN npm install
RUN npm run build
EXPOSE 8080
CMD [ "npm", "run", "start"]
