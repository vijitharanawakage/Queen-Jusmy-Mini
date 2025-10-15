# Base image with Node.js
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first (for caching dependencies)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy all other files
COPY . .

# Expose your app port (from index.js)
EXPOSE 8000

# Start the app
CMD ["node", "index.js"]
