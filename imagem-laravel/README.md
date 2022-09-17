
# Criando imagem com Laravel

# Site PHP Composer
(https://getcomposer.org/download)[https://getcomposer.org/download]

# Site do Laravel
(https://laravel.com/docs/9.x/installation#your-first-laravel-project)[https://laravel.com/docs/9.x/installation#your-first-laravel-project]

# Comando para criar uma imagem
```sh
docker build -t hospedaapp/laravel:latest .
```

# Comando para criar um container apartir da imagem
```sh
docker run --rm -d --name laravel -p 8000:8000 hospedaapp/laravel
```

# Comando para trocar a porta em que a aplicação irá rodar
```sh
docker run --rm -d --name laravel -p 8001:8001 hospedaapp/laravel --host=0.0.0.0 --port=8001
```

# Visualizar log do container rodando
```sh
docker logs laravel -f
```
