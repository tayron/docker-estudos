#!/bin/bash
clear

echo "# -------------------------------------------------------------------"
echo "# CRIANDO NETWORK: laranet"
echo "# -------------------------------------------------------------------"
docker network create laranet
docker network ls

echo "# -------------------------------------------------------------------"
echo "# CRIANDO IMAGEM: Laravel"
echo "# -------------------------------------------------------------------"
docker build -t hospedaapp/laravel:prod . -f Dockerfile.laravel

echo "# -------------------------------------------------------------------"
echo "# CRIANDO IMAGEM: Nginx"
echo "# -------------------------------------------------------------------"
docker build -t hospedaapp/nginx:prod . -f Dockerfile.nginx

echo "# -------------------------------------------------------------------"
echo "# CRIANDO CONTEINER: Laravel"
echo "# -------------------------------------------------------------------"
docker run -d --network laranet --name laravel hospedaapp/laravel:prod

echo "# -------------------------------------------------------------------"
echo "# CRIANDO CONTEINER: Nginx"
echo "# -------------------------------------------------------------------"
docker run -d --network laranet --name nginx -p 8080:80 hospedaapp/nginx:prod