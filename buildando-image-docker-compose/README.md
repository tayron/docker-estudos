# Buildando imagem como docker compose

## Subindo container
```sh
docker-compose -f docker-compose.yaml up -d
```

## Subindo container peindo pra buildar novamente a imagem
```sh
docker-compose -f docker-compose.yaml up --build -d
```

## Pando os serviços 
```sh
docker-compose down
```

Saída do comando acima
```sh
Stopping laravel ... done
Stopping nginx   ... done
Removing laravel ... done
Removing nginx   ... done
Removing network docker-compose_laranet
```

## Visualizando containers criado com docker-compose
```sh
docker-compose ps
```

A saída do comando acima será:
```sh
 Name                Command              State                  Ports                
--------------------------------------------------------------------------------------
laravel   docker-php-entrypoint php-fpm   Up      9000/tcp                            
nginx     nginx -g daemon off;            Up      0.0.0.0:8080->80/tcp,:::8080->80/tcp
```