#!/bin/bash
clear 

echo "# -------------------------------------------------------------------"
echo "# REMOVENDO CONTAINER: Laravel"
echo "# -------------------------------------------------------------------"
docker container rm laravel -f

echo "# -------------------------------------------------------------------"
echo "# REMOVENDO CONTAINER: Nginx"
echo "# -------------------------------------------------------------------"
docker container rm nginx -f

echo "# -------------------------------------------------------------------"
echo "# REMOVENDO IMAGEM: Laravel"
echo "# -------------------------------------------------------------------"
docker image rm hospedaapp/laravel:prod -f

echo "# -------------------------------------------------------------------"
echo "# REMOVENDO IMAGEM: Nginx"
echo "# -------------------------------------------------------------------"
docker image rm hospedaapp/nginx:prod -f

echo "# -------------------------------------------------------------------"
echo "# REMOVENDO NETWORK: laranet"
echo "# -------------------------------------------------------------------"
docker network rm laranet