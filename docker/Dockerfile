FROM php:7.4-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions gd pdo_mysql mysqli redis imagick zip

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

WORKDIR /var/www/html/hitech/

EXPOSE 9000
