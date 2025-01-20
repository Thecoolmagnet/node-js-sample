# Use the official Node.js image as the base
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the entire project
COPY . .

# Expose the application port
EXPOSE 8080

# Run the app
CMD ["npm", "start"]

