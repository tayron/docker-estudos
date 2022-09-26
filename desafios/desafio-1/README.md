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
hospedaapp/codeeducation   latest        db12b482ced9   3 minutes ago   79.7MB
<none>                     <none>        a51c384288bf   3 minutes ago   381MB
golang                     1.19-alpine   5dd973625d31   2 weeks ago     352MB
ubuntu                     latest        2dc39ba059dc   3 weeks ago     77.8MB
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
2b55860d4c66: Pull complete 
cf89769a2069: Pull complete 
02277a828260: Pull complete 
Digest: sha256:91a0450c9bfc1178489074bf2b14242ba1797acaf52033a12dce0a4a420270f9
Status: Downloaded newer image for hospedaapp/codeeducation:latest
2022/09/26 21:35:15 Code.education Rocks!
2022/09/26 21:35:15 Servidor executando na porta http://localhost:3000 do container
```

