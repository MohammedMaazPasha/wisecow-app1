# Dockerfile

# Use the official Node.js image as a base
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package.json package-lock.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 8000

# Command to run the app
CMD ["node", "app.js"]  # Replace 'app.js' with your entry file
