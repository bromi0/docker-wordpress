FROM wordpress:php8.0-fpm-alpine

RUN apk add shadow && usermod -u 1000 www-data && groupmod -g 1000 www-data && chown -R www-data:www-data /var/www/html
# config
COPY ./wordpress/wp-php.ini $PHP_INI_DIR/conf.d/
# on a fresh volume, wordpress will copy that content to a volume.
COPY --chown=www-data:www-data ./src/wp-content/plugins /usr/src/wordpress/wp-content/plugins
COPY --chown=www-data:www-data ./src/wp-content/themes /usr/src/wordpress/wp-content/themes
