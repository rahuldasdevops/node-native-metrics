FROM node:latest
WORKDIR /app
COPY . /application
RUN npm install
EXPOSE 3001
CMD node app.js
