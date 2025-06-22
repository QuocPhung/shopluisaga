FROM php:8.2-apache

# Cài các extension Laravel cần
RUN apt-get update && apt-get install -y \
    libzip-dev unzip git curl libpng-dev libonig-dev libxml2-dev zip \
    && docker-php-ext-install pdo_mysql zip mbstring exif pcntl bcmath

# Cài Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Sao chép Laravel project vào container
COPY . /var/www/html

# Thiết lập working directory
WORKDIR /var/www/html

# Cấp quyền cho storage & bootstrap/cache
RUN chmod -R 777 storage bootstrap/cache

# Cài dependencies
RUN composer install --no-dev --optimize-autoloader

# Expose port
EXPOSE 80
