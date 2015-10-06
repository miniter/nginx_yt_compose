#!/bin/bash
sed -i "s|<proxy_pass_ip>|$YOUTRACK_PORT_8080_TCP_ADDR|" /etc/nginx/nginx_yt.conf
sed -i "s|<proxy_pass_port>|$YOUTRACK_PORT_8080_TCP_PORT|" /etc/nginx/nginx_yt.conf

nginx
