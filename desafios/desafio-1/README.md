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

Ao executar o comando ```docker image ls``` poderá ver que a imagem ficou com aproximadamente 79.7MB:
```sh
REPOSITORY                       TAG           IMAGE ID       CREATED          SIZE
hospedaapp/fullcycle_desafio_1   latest        270b33ccc8b1   8 seconds ago    79.7MB
<none>                           <none>        8450bbec6f9f   18 seconds ago   381MB
golang                           1.19-alpine   5dd973625d31   2 weeks ago      352MB
ubuntu                           latest        2dc39ba059dc   3 weeks ago      77.8MB
```

## Executando a aplicação
A aplicação estará disponível sobre a url: ```http://localhost:8080/```

## Repositório DockerHub
[Imagem: fullcycle_desafio_1](https://hub.docker.com/r/hospedaapp/fullcycle_desafio_1)

Para baixar a imagem e subir o container execute:
```sh
docker run -d --rm -p 8080:3000 --name fullcycle_desafio_1 hospedaapp/fullcycle_desafio_1 -d
```
A aplicação estará disponível sobre a url: ```http://localhost:8080/```