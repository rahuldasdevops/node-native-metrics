FROM node:latest
WORKDIR /app
COPY . /app
EXPOSE 3001
CMD node app.js
