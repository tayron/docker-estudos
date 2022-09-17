# Criando imagem com NodeJS

# Subindo um container com Node 15
```sh
docker run --rm -it -v $(pwd)/:/usr/src/app -p 3000:3000 node:15 bash
```

# Iniciando projeto
```sh
npm init
```

# Instalando Express
```sh
npm install express --save
```

# Rodando aplicação dentro do container
```sh
node index.js
```

# Gerando uma imagem com a aplicação
```sh
docker build -t hospedaapp/hello-express . -f Dockerfile.prod
```

# Subindo container
```sh
docker run -p 3000:3000 hospedaapp/hello-express
```