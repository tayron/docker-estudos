FROM php:7.4-cli

WORKDIR /var/www

RUN apt-get update
RUN apt-get install libzip-dev -y

# docker-php-ext-install é um programa pra instalar extensão PHP
RUN docker-php-ext-install zip

# Instalando composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"

RUN php composer.phar create-project laravel/laravel laravel

ENTRYPOINT ["php", "laravel/artisan", "serve"]
CMD ["--host=0.0.0.0"]