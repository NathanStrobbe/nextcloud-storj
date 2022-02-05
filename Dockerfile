FROM nextcloud:23

COPY php.ini /usr/local/etc/php/php.ini

RUN apt-get update \
    && apt-get install -y libffi-dev \
    && docker-php-ext-configure ffi --with-ffi \
    && docker-php-ext-install ffi \
    && rm -rf /var/lib/apt/lists/*
