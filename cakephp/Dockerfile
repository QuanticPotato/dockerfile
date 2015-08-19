FROM occitech/cakephp:5.6-apache

MAINTAINER Barnabé Chauvin <barnabe.chauvin@gmail.com>

# php configuration
COPY php.ini /usr/local/etc/php/

# Set the webroot/ directory of the given volume as the apache root directory
RUN rm -r /var/www/html && \
	ln -s /app/webroot /var/www/html

# Install packages (mysql, mail)
RUN apt-get update && apt-get install -y  \
	mysql-client \
	mailutils \
	ssmtp

COPY install.sh /opt/install.sh
CMD /opt/install.sh && apache2-foreground
