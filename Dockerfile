# Build Stage
FROM node:12.20-alpine  AS build
WORKDIR /app
COPY package*.json /app/
RUN npm install 
COPY ./ /app/
RUN node_modules/.bin/ng build --output-path=dist --prod=true



# Run Stage
FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY  /dist/crudtuto-Front  /usr/share/nginx/html