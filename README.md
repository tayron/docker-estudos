
# Docker estudos

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