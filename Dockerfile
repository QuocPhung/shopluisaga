FROM php:8.2-apache

RUN apt-get update && apt-get install -y \
    git curl libzip-dev unzip libpng-dev libonig-dev libxml2-dev zip sqlite3 \
    && docker-php-ext-install pdo pdo_sqlite zip mbstring exif pcntl bcmath

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY . /var/www/html

WORKDIR /var/www/html

RUN chmod -R 777 storage bootstrap/cache

RUN composer install --no-dev --optimize-autoloader

ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/*.conf \
    && a2enmod rewrite \
    && echo "ServerName localhost" >> /etc/apache2/apache2.conf

EXPOSE 80
