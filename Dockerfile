#FROM alpine:latest
#RUN apk add --no-cache nodejs npm
#FROM node:latest
#Pulling from github 
FROM docker.pkg.github.com/rahuldasdevops/docker-images/node:latest
WORKDIR /app
COPY . /app
EXPOSE 3000
ENTRYPOINT ["node"]
CMD ["app.js"]
