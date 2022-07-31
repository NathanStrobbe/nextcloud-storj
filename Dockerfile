FROM nextcloud:23

COPY php.ini /usr/local/etc/php/php.ini
COPY apache2.conf /etc/apache2/sites-available/000-default.conf

RUN apt-get update \
    && apt-get install -y libffi-dev \
    && docker-php-ext-configure ffi --with-ffi \
    && docker-php-ext-install ffi \
    && rm -rf /var/lib/apt/lists/*
