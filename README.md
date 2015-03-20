## Nginx Dockerfile


This repository contains **Dockerfile** of [Nginx](http://nginx.org/) with authentication
configured as a proxy for YouTrack


### Dependencies

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Setup directories

2. Install [Docker](https://www.docker.io/).

3. Build an image from Dockerfile:
  docker build -t="miniter/nginx_yt" github.com/miniter/nginx_yt

4. Copy wildcard_chain.pem and wildcard.key to /etc/nginx/ssl.  


### Usage

    docker run -d -p 443:443 miniter/nginx_yt

#### Attach persistent/shared directories

    docker run -d -p 443:443 --link youtrack:youtrack -v /var/log/nginx:/var/log/nginx -v /etc/nginx/ssl:/etc/nginx/ssl miniter/nginx_yt

# Setup directories
  sudo mkdir -p /etc/nginx/ssl
  
  sudo mkdir -p /var/log/nginx

Open `http://<host>` to see the welcome page.

