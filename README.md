# Docker for nginx


## Building pure nginx image with html [error pages](https://github.com/AndiDittrich/HttpErrorPages)

you can build only nginx for html.

This uses Dockerfile.nginx with nginx-site.conf

1. Build

```bash
sudo docker build -f Dockerfile.nginx -t nginx_pure_image .
```

2. Run

```bash
sudo docker run -p 80:80 --name nginx-pure nginx_pure_image
```

3. Remove

```bash
sudo docker rm -f nginx-pure
```

## Building nginx with php-fpm 7.1.5

This images use a docker-compose.yml.

This uses docker-compose.yml, Dockerfile and nginx.conf

