FROM php:8.2-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

RUN apk add --no-cache libmcrypt-dev \
    && docker-php-ext-install bcmath
