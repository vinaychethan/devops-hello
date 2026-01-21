# Use official Node.js LTS alpine image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json first (for caching)
COPY package*.json ./

# Install dependencies (including dev for testing)
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]
