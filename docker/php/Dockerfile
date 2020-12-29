FROM php:7.2-fpm
COPY php.ini /usr/local/etc/php/

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y libpq-dev git zip unzip && \
    apt-get clean && \
    rm -rf /var/cache/apt

RUN docker-php-ext-install mbstring pdo pdo_pgsql

#Composer install
COPY --from=composer /usr/bin/composer /usr/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER 1

ENV COMPOSER_HOME /composer

ENV PATH $PATH:/composer/vendor/bin


WORKDIR /var/www

RUN composer global require "laravel/installer"

