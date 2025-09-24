FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy ALL files first
COPY . .

# Install dependencies
RUN npm install

# Expose the port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]