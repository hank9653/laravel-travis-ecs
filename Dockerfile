FROM hank9653/hank9653-cicdtest

WORKDIR /var/www/html

COPY laravel .

RUN composer install

RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 775 /var/www/html/storage

CMD /usr/sbin/apache2ctl -D FOREGROUND
