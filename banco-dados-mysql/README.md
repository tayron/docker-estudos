# Trabalhando com banco de dados usando docker


## Criando tabela no MySQL
### Acessando terminal do MySQL
```sh
mysql -uroot -p
```
### Visualizando todos os bancos criados
```sh
show databases;
```

### Acessando o banco de dados nodedb
```sh
use nodedb;
```

### Criando tabela no banco nodedb
```sh
create table people(id int not null auto_increment, name varchar(255), primary key(id));
```

### Visualizando a tabela criada
```sh
desc people;
```

### Listando registros no banco
```sh
select id, name from people;
```

## Configurando aplicaão node
### Instalando dependencia do mysql usando npm
```sh
npm install mysql --save
```

## Dependência entre containers
No arquivo docker-compose.yaml existe a flag chamada depends_on onde é possível setar o nome do container que deve se esperar subir, porém na versão 3 do docker ele não espera tanto tempo, sendo necessário auxílio de ferramenta como [https://github.com/jwilder/dockerize](https://github.com/jwilder/dockerize)

Que tem um script que é colocado no dockerfile para auxiliar nesta tarefa, no caso foi usado o script:
```sh
RUN apt-get update && apt-get install -y wget

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
```

Ao acessar o container da aplicação com dockerrize instalado é possívelrodar o comando ```sh dockerize``` para ver todos seus comandos.

Para testar se o container do MySQL está ativo:
```sh
dockerize -wait tcp://db:3306 -timeout 50s
```