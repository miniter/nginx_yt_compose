############################################################
#
# Nginx Dockerfile
# Based on CentOs
# https://github.com/jbasdf/nginx
# forked from https://github.com/dockerfile/nginx
#
############################################################

# Pull base image.
FROM nginx

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

# Copy startup script
ADD startup.sh /opt/

# Make the startup script executable
RUN chmod +x /opt/startup.sh

# Define mountable directories.
VOLUME ["/data", "/etc/nginx/sites-enabled", "/var/log/nginx", "/etc/nginx/ssl"]

# Define working directory.
WORKDIR /etc/nginx

# Expose ports.
EXPOSE 443

# Define default command - script to modify nginx config and start nginx
ENTRYPOINT ["/opt/startup.sh"]
