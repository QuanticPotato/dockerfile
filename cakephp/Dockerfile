FROM occitech/cakephp:5.6-apache

MAINTAINER Barnabé Chauvin <barnabe.chauvin@gmail.com>

# php configuration
COPY php.ini /usr/local/etc/php/

# Set the webroot/ directory of the given volume as the apache root directory
VOLUME ['/app']
RUN rm -r /var/www/html && \
	ln -s /app/webroot /var/www/html

# Install mysql client
RUN apt-get update && apt-get install -y  \
	mysql-client
