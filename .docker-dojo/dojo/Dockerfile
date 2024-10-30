FROM php:8.3-fpm-alpine

#RUN apk add icu-dev
#RUN apk add composer
#RUN apk update && apk add \
#        libpng-dev \
#        libxml2-dev \
#        libzip-dev \
#        imap-dev \
#        openssl-dev \
#        autoconf \
#        dpkg-dev \
#        dpkg \
#        build-base \
#        busybox-extras \
#		linux-headers

#RUN docker-php-ext-configure intl
#RUN apk update && apk add --no-cache \
#        freetype-dev \
#        jpeg-dev \
#        libpng-dev \
#        libwebp-dev \
#    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
#    && docker-php-ext-install -j$(nproc) pdo_mysql soap pcntl gd zip intl dom fileinfo simplexml bcmath

#RUN apk add php-dom php-fileinfo php-intl php-pcntl php-pdo php-simplexml php-soap php-imap php-gd php-tokenizer php-sockets php-sodium php-session php-xmlwriter php-posix php-bcmath php-sqlite3

#RUN docker-php-ext-configure imap --with-imap-ssl \
#    && docker-php-ext-install imap

#COPY fapi-init.sh /opt/fapi-init.sh
#RUN chmod +x /opt/fapi-init.sh

WORKDIR /fapi/links/dojo
