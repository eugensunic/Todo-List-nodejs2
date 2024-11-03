# Use Node.js 18.16.0 as the base image
FROM node:18.16.0

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY backend/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code from the backend directory
COPY backend/. .

# Expose port 4000 for the application
EXPOSE 4000

# Start the application
CMD ["npm", "start"]
