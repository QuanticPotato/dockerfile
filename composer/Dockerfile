FROM composer/composer

MAINTAINER Barnabé Chauvin <barnabe.chauvin@gmail.com>

RUN apt-get update && apt-get install -y \
	g++ \
	libicu-dev

# Install the PHP-intl extension
RUN docker-php-ext-install intl

