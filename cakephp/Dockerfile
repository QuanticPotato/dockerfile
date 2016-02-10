FROM occitech/cakephp:5.6-apache

MAINTAINER Barnabé Chauvin <barnabe.chauvin@gmail.com>

# php configuration
COPY php.ini /usr/local/etc/php/

# Set the webroot/ directory of the given volume as the apache root directory
RUN rm -r /var/www/html && \
	ln -s /app/webroot /var/www/html

# Install packages (mysql, mail)
RUN apt-get update && apt-get install -y  \
	mysql-client

# Install the lua extension
RUN cd /tmp && \
	curl -O ftp://ftp.cwru.edu/pub/bash/readline-6.3.tar.gz && tar -xvf readline-6.3.tar.gz && cd readline-6.3 && \
	./configure && make -j8 && make install && cd .. && \
    curl -O ftp://ftp.gnu.org/gnu/ncurses/ncurses-6.0.tar.gz && tar -xvf ncurses-6.0.tar.gz && cd ncurses-6.0 && \
	./configure && make -j8 && make install && cd .. && \
    curl -O http://www.lua.org/ftp/lua-5.2.0.tar.gz && tar -xvf lua-5.2.0.tar.gz && cd lua-5.2.0 && \
	make CFLAGS='-fPIC' linux -j8 && make install && cd .. && \
    curl -O https://pecl.php.net/get/lua-1.1.0.tgz && tar -xvf lua-1.1.0.tgz && cd lua-1.1.0 && \
	phpize && ./configure --with-lua=/usr/local && make -j8 && make install && \
	docker-php-ext-enable lua.so && \
	rm /tmp/* -rf 

CMD apache2-foreground
