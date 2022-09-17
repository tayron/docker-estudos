# Configurando Nginx como proxy reverso

## Obtendo configurações nginx para o framework laravel
[https://laravel.com/docs/9.x/deployment#nginx](https://laravel.com/docs/9.x/deployment#nginx)

Essas configurações no link acima será usado como base para configurar o nginx para acessar a aplicação laravel em outro container docker

## Gerando build da imagem nginx
```sh
docker build -t hospedaapp/nginx:prod .
```

## Criando network para colocar nginx e a aplicação laravel na mesma rede

### Listando as redes existentes
```sh
docker network list
```

Saída será algo parecido com 
```sh
NETWORK ID     NAME      DRIVER    SCOPE
989a3864a441   bridge    bridge    local
f9403a316d91   host      host      local
9f1cd85e484b   none      null      local
```

### Criando rede para nginx e o laravel poderem trabalhar juntos
```sh
docker network create laranet
```

Saída do comando será algo parecido com 
```sh
b39984391ee054c8cf7c190d2b82d0c3e17f39146d499c82e7ac64fef55c2994
```

A rede foi criada e por padrão ela será bridge
```sh
NETWORK ID     NAME      DRIVER    SCOPE
b39984391ee0   laranet   bridge    local
```

### Criando contaíner da aplicação laravel e nginx
Criando imagem do laravel
```sh
docker build -t hospedaapp/laravel:prod . -f Dockerfile.laravel
```

Criando container com a aplicação laravel
```sh
docker run -d --network laranet --name laravel hospedaapp/laravel:prod
```
Saída do comando acima será:
```sh
a5556a9da06d27c882c7914153188030504ba4f52eea97e56e14b42446d77626
```

Visualizando container rodando
```sh
dosker ps
```
Container com a aplicação laravel rodando na porta 9000
```sh
CONTAINER ID   IMAGE                     COMMAND                  CREATED          STATUS          PORTS      NAMES
a5556a9da06d   hospedaapp/laravel:prod   "docker-php-entrypoi…"   30 seconds ago   Up 30 seconds   9000/tcp   laravel
```

Criando imagem do nginx
```sh
docker build -t hospedaapp/nginx:prod . -f Dockerfile.nginx
```

Criando container com nginx
```sh
docker run -d --network laranet --name nginx -p 8080:80 hospedaapp/nginx:prod
```
