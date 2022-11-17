
# Run Stage
FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY  /dist/crudtuto-Front  /usr/share/nginx/html