# This is a comment. Comments are removed automatically by docker.

# Docker processes this file in order (= line by line).

# Base image:
FROM node:9.4.0-alpine

# Copies files from local machine into image
COPY app.js .
COPY mytest.txt .
COPY package.json .

# Runs commands inside image
RUN npm install &&\
    apk update &&\
    apk upgrade

# Tells docker to listen to port 8080
EXPOSE  8080

# Specifies the command to be run automatically when the image is run as a container
CMD node app.js
