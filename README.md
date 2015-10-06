## Nginx Dockerfile


This repository contains **Dockerfile** of [Nginx](http://nginx.org/) with authentication
configured as a proxy for YouTrack


### Dependencies

* [dockerfile/nginx](http://dockerfile.github.io/#/nginx)


### Installation

1. Setup directories

2. Install [Docker](https://www.docker.io/).

3. Build an image from Dockerfile:
  docker build -t="miniter/nginx_yt" github.com/miniter/nginx_yt
4. Setup directories:
  mkdir -p /etc/nginx/ssl && mkdir -p /var/log/nginx
5. Copy wildcard_chain.pem and wildcard.key to /etc/nginx/ssl.  

### Usage

    docker run -d -p 443:443 -p 90:80 miniter/nginx_yt

#### Attach persistent/shared directories

    docker run -d -p 443:443 -p 90:80 --link youtrack:youtrack -v /var/log/nginx:/var/log/nginx -v /etc/nginx/ssl:/etc/nginx/ssl miniter/nginx_yt

# Setup directories
   mkdir -p /etc/nginx/ssl
   mkdir -p /var/log/nginx

Open `http://<host>` to see the welcome page.

