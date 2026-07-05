FROM nginx:latest

LABEL maintainer="Prasanth"

EXPOSE 80

COPY index.html /usr/share/nginx/html/index.html
