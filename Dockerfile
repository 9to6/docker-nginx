FROM nginx:1.13.1-alpine
LABEL maintainer="9to5, ktk0011-dev@gmail.com"
LABEL repository="https://github.com/9to6/docker-nginx"

ADD nginx.conf /etc/nginx/conf.d/default.conf
ADD errors /usr/share/nginx/errors
