#FROM alpine:latest
#RUN apk add --no-cache nodejs npm
FROM node:latest

WORKDIR /app
COPY . /app
EXPOSE 3000
ENTRYPOINT ["node"]
CMD ["app.js"]
