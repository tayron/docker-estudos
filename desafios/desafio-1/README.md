# Desafio número 1
Gerar uma imagem com uma aplicação em golang que ao ser acessada deverá
exibir a mensagem: **Full Cycle Rocks**

**Observação:** Usar printf para exibir a mensagem

## Restrições:
* Imagem golang não pode ter mais que 2MB

##  Criando imagem e subindo container
```sh 
docker-compose up --build -d
```

## Executando a aplicação
A aplicação estará disponível sobre a url: ```http://localhost:8080/```

## Repositório DockerHub
[Imagem do Desafio 1](https://hub.docker.com/r/hospedaapp/codeeducation)

Para baixar a imagem e subir o container execute:
```sh
docker run hospedaapp/codeeducation
```
O resultado será:
```sh
Unable to find image 'hospedaapp/codeeducation:latest' locally
latest: Pulling from hospedaapp/codeeducation
c89de7358891: Pull complete 
e0d558b28be3: Pull complete 
Digest: sha256:889a600764ecab7b75f3bba65e1cfc1509e8c35a8fedcee53595c638565635d2
Status: Downloaded newer image for hospedaapp/codeeducation:latest
Full Cycle Rocks!!!
```

Ao executar o comando ```docker image ls``` poderá ver que a imagem ficou com aproximadamente 358kB:
```sh
REPOSITORY                 TAG       IMAGE ID       CREATED       SIZE
hospedaapp/codeeducation   latest    880f4d53f3a4   2 hours ago   358kB
```