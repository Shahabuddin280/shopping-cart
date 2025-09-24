FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files first for better caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy all other files
COPY . .

# Expose the port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]