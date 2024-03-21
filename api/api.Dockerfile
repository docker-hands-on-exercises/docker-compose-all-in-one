FROM node:21-slim
# Use your official image

WORKDIR /app
# COPY package.json
COPY package.json /app
# Installing dependencies
RUN npm install

# Copying all the files in our project
COPY . /app

# Exposing server port
#EXPOSE 8080

# Starting our application
CMD [ "node", "index.js" ]