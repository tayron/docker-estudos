
# Docker estudos

## O que é Docker
Docker é um conjunto de produtos de plataforma como serviço que usam virtualização de nível de sistema operacional para entregar software em pacotes chamados contêineres. Os contêineres são isolados uns dos outros e agrupam seus próprios softwares, bibliotecas e arquivos de configuração.

## O que é container
O container é um ambiente isolado. Já o docker é uma plataforma open source na linguagem de programação Go, que possui alto desempenho e é desenvolvida diretamente no Google.

Assim, o docker agrupa partes de softwares de um sistema de arquivo completo e que abrange todos os recursos necessários para a sua execução. Por isso, é uma plataforma de containers.

Isso significa que tudo pode ser instalado no servidor e é armazenado nos containers. Dessa forma, os mesmos softwares e as suas versões podem ter uma execução facilitada em qualquer ambiente de desenvolvimento.

## Visualizar container ativo 
```sh
docker ps
```
Exemplo de saída:
```sh
CONTAINER ID   IMAGE                 COMMAND        CREATED      STATUS        PORTS                                                 NAMES
2672e7089b9c   portainer/portainer   "/portainer"   4 days ago   Up 1 second   8000/tcp, 0.0.0.0:9000->9000/tcp, :::9000->9000/tcp   portainer
```

## Visualiza todos id dos container ativos e inativos
```sh
docker ps -a -q
```
Retorno será algo semelhante:
```sh
1bc4b99f846b
9c8a99ea2e51
5693d7a5cfed
ef850a8e893b
ef407e8f1c77
fdf750fdcfa3
3192739e0647
135399ec16d1
34bc701cd43f
32c7a62972ce
```

## Apagando todos os container usando a listagem de ids
```sh
docker rm $(docker ps -a -q)
```

Para apagar todos os container incluindo os ativos use a flag **-f**
```sh
docker rm $(docker ps -a -q) -f
```

**Observação:** A flag **-f** irá parar e remover os containers ativos

## Apagndo todas os containers, redes, imagens e cache

```sh
docker system prune --all
```
Ao final será mostrado tudo que foi apagado e quanto de espaço do HD foi liberado:
```sh
WARNING! This will remove:
  - all stopped containers
  - all networks not used by at least one container
  - all images without at least one container associated to them
  - all build cache

Are you sure you want to continue? [y/N] y
Deleted Images:
untagged: requarks/wiki:2
untagged: requarks/wiki@sha256:de23673914e56b69b795987509ca8e5f45aa6ca3834ae91e57b55e5388d3d4e3
deleted: sha256:46e76d07d2218d1fa06955914e52d83dab7aa79af759c9ecef70b7d17bfcbd27
deleted: sha256:8ced77757bcb7a2b3c23b20259ed8236cc988f2c862ce5168a69da4bbcbf9176
...

Total reclaimed space: 660.2M
```

## Gerando imagem docker
```sh
docker build -t hospedaapp/laravel:latest . -f Dockerfile.prod
```

## Visualizando todas as imagens com nome laravel
```sh
docker images | grep laravel
```

## Visualizando log da aplicação
```sh 
docker logs laravel
```