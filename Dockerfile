# Use Node.js LTS version
FROM node:18-alpine

# Print current working directory (for debugging)
RUN pwd && ls -la

# Set working directory
WORKDIR /app

# Print working directory content (for debugging)
RUN pwd && ls -la

# Copy package files
COPY package*.json ./

# Print directory content after copy (for debugging)
RUN pwd && ls -la

# Install dependencies
RUN npm install

# Copy all other files
COPY . .

# Print final directory content (for debugging)
RUN pwd && ls -la

# Expose port
EXPOSE 3000

# Start command
CMD ["npm", "start"]
