# Menggunakan image PHP 8.4 dengan FPM
FROM php:8.4-fpm-alpine

# Instal ekstensi PHP yang dibutuhkan Laravel
RUN apk update && apk add --no-cache \
    mysql-client \
    git \
    unzip \
    libxml2-dev \
    # Tambahkan tools lain yang sering dibutuhkan di PHP 8+
    imagemagick-dev \
    pcre-dev

# Install dan aktifkan ekstensi
RUN docker-php-ext-install pdo pdo_mysql opcache bcmath exif

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Ubah kepemilikan file agar PHP-FPM dapat menulis ke storage (PENTING!)
RUN chown -R www-data:www-data /var/www/html

WORKDIR /var/www/html
