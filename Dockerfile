# Build Node.js Image
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package files
COPY package*.json ./  

# Install dependencies
RUN npm install          

# Copy the whole project files into the working directory
COPY . .                 

# Start the app
CMD ["npm", "run", "dev", "--", "--host"]
