FROM hank9653/hank9653-cicdtest

WORKDIR /var/www/html

COPY laravel .

RUN composer install
RUN php artisan key:generate

RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 775 /var/www/html

RUN service apache2 restart

