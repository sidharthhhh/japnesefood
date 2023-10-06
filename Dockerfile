# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Vite application
RUN npm run build

# Expose the port your application will run on
EXPOSE 3000

# Start the application
CMD [ "npm", "run", "dev" ]
