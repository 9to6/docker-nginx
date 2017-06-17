# Docker for nginx

You can have own server easily using docker.  
This docker image size is small using alpine linux.  


In addition, if you want to have https server, it's also simple and free. (using let's encrypt)

## Environment

- Ubuntu 16.04 xenial  
- Docker 1.27  
- DockerCompose 1.13  
- git clone this repository  


## Preparation

- git clone  

```
git clone https://github.com/9to6/docker-nginx
```

- Change nginx configuration  

Open `nginx.conf` file.  

>server_name withtalk.top;  

This line change `withtalk.top` to your domain.


## Building pure nginx image with html [error pages](https://github.com/AndiDittrich/HttpErrorPages)

you can build only nginx for html.

This uses Dockerfile.nginx with nginx-site.conf

1. Build

```bash
$ sudo docker build -f Dockerfile.nginx -t nginx_pure_image .
```

2. Run

```bash
$ sudo docker run -p 80:80 --name nginx-pure nginx_pure_image
```

or using https also.


```bash
$ sudo docker run -p 80:80 -p 443:443 --name nginx-pure nginx_pure_image
```

3. Remove

```bash
$ sudo docker rm -f nginx-pure
```

## Building nginx with php-fpm 7.1.5

This images use a docker-compose.yml.

This uses docker-compose.yml, Dockerfile and nginx.conf


## Using docker compose, connect php


1. Run

```bash
$ sudo docker-compose up -d
```

2. Clean

```bash
$ sudo docker-compose down
$ sudo docker volume prume -f
```

## You want to use https too.


### Install certbot

```
$ wget https://dl.eff.org/certbot-auto
$ chmod a+x ./certbot-auto
$ ./certbot-auto --help
```


### Getting certificates

change domain to your domain.  

```
$ ./certbot-auto certonly --standalone --email your@email.com -d example.com -d www.example.com
```

### For renew certificates

Add cron job.

```
$ sudo echo "0 1 * * * /home/user/certbot-auto renew --quiet --renew-hook \"/usr/bin/docker exec nginx-simple nginx -s reload\"" | sudo tee -a /var/spool/cron/root
```
