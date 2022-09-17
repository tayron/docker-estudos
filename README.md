
# Docker estudos

## O que é Docker
Docker é um conjunto de produtos de plataforma como serviço que usam virtualização de nível de sistema operacional para entregar software em pacotes chamados contêineres. Os contêineres são isolados uns dos outros e agrupam seus próprios softwares, bibliotecas e arquivos de configuração.

## O que é container
O container é um ambiente isolado. Já o docker é uma plataforma open source na linguagem de programação Go, que possui alto desempenho e é desenvolvida diretamente no Google.

Assim, o docker agrupa partes de softwares de um sistema de arquivo completo e que abrange todos os recursos necessários para a sua execução. Por isso, é uma plataforma de containers.

Isso significa que tudo pode ser instalado no servidor e é armazenado nos containers. Dessa forma, os mesmos softwares e as suas versões podem ter uma execução facilitada em qualquer ambiente de desenvolvimento.

# Visualiza todos id dos container ativos e inativos
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

# Apagando todos os container usando a listagem de ids
```sh
docker rm $(docker ps -a -q) -f
```
**Observação:** A flag **-f** irá parar e remover os containers ativos