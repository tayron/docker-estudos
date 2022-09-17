# Networks

Existe as seguintes possibilidades de criação de redes internas com containers

*** Bridge** - Network padrão, usada para um container consiga se comunicar facilmente com outro
*** Host** - Mesma network do docker com a network do host, ou seja, uma porta 80 de um container rodando uma aplicação pode ser acessado através do host, http://localhost
** **

***overlay** - Varios docker em máquina diferente, rede criada para que os containers docker dessas maquinas destintas consiga se comuninar, cluster.

***maclan** - Pode-ser setar um macaddress em um container docker e ele entra na rede local como se fosse uma maquina real na rede.

***nome** - Sem rede

## Comandos docker para manipular network

```sh
docker network --help
```

Saída do comando acima
```sh
Usage:  docker network COMMAND

Manage networks

Commands:
  connect     Connect a container to a network
  create      Create a network
  disconnect  Disconnect a container from a network
  inspect     Display detailed information on one or more networks
  ls          List networks
  prune       Remove all unused networks
  rm          Remove one or more networks

Run 'docker network COMMAND --help' for more information on a command.
```
