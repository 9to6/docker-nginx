FROM nginx:1.13.1-alpine

ADD nginx.conf /etc/nginx/conf.d/default.conf
ADD errors/ /usr/share/nginx/html/errors/

#CMD ['nginx', '-g', 'daemon off;']
#CMD ["/bin/sh"]
