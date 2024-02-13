From node
RUN echo "moving to copy file phase"

# Create a new directory in root
RUN mkdir -p /calculator/app

# Set the working directory
WORKDIR /calculator/app

COPY package*.json ./

# Run npm install to install node.js packages
RUN npm install

COPY *.js ./

# Expose port 3000
EXPOSE 3000

# Set the default execution command
CMD ["node", "index.js"]
