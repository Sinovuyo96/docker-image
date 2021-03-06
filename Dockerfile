
FROM node

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY server.js /var/www/html
# COPY package*.json ./


# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
ADD . .

EXPOSE 8080
CMD node server.js
