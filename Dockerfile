# Use an official Node.js image as the base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for efficient caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Expose the port the React app runs on (default is 3000)
EXPOSE 3000

# Start the React development server
CMD ["npm", "run", "dev", "--", "--host"]

