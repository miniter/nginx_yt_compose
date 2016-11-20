## Nginx Dockerfile


This repository contains **Dockerfile** of [Nginx](http://nginx.org/) with authentication
configured as a proxy for YouTrack


### Dependencies

* [dockerfile/nginx](http://dockerfile.github.io/#/nginx)


### Installation

1. Setup directories

2. Install [Docker](https://www.docker.io/).

3. Install docker-compose

4. Setup directories:
  mkdir -p /etc/nginx/ssl && mkdir -p /var/log/nginx
5. Copy wildcard_chain.pem and wildcard.key to /etc/nginx/ssl.  
6. Follow directions on setting up you track docker.   https://github.com/dzwicker/docker-youtrack

### Usage

    docker-compose up -d

# Setup directories
   mkdir -p /etc/nginx/ssl
   mkdir -p /var/log/nginx


