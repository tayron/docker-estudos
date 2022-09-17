# Otimizando imagem

## Utilizando técnica do multistage build
```sh
FROM php:7.4-cli AS builder

WORKDIR /var/www

.. fazendo todas as instalações e execuções para rodar o framework laravel


## Multi-stage build
FROM php:7.4-fpm-alpine
WORKDIR /var/www
RUN rm -rf /var/www/html

## Copiando a pasta do framework laravel para a nova imagem
COPY --from=builder /var/www/laravel .

# Dando permissão usuário e grupo www-data manipular a pasta /var/www
RUN chown -R www-data:www-data /var/www

# Porta do php fPM
EXPOSE 9000

CMD ["php-fpm"]
```

Com isso a nova imagem criada, não terá todas as instalações feitas na primeira imagem, tornando-se mais leve e com tamanho de espaço menor.