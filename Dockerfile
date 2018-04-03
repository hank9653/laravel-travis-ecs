FROM hank9653/hank9653-cicdtest

WORKDIR /var/www/html

COPY laravel .

RUN composer install
RUN php artisan key:generate

RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 775 /var/www/html/storagebu

CMD /usr/sbin/apache2ctl -D FOREGROUND
