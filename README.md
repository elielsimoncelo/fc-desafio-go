# golang

## Desafio

- Criar imagem com tamanho <= 2MB
- Imprimir a mensagem Full Cycle Rocks! na sua execução

## Imagem no DockerHub

```sh
    docker pull sousaeliel/golang:scratch
```

## Excluindo containers

```sh
docker rm -vf $(docker ps -aq)
```

## Excluindo imagens

```sh
docker rmi -f $(docker images -aq)
```