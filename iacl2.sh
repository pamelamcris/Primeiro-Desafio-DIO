#!/bin/bash
echo "Instalando os Aplicativos Apache2 e Unzip..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "trabalhando os arquivos nescessários..."

cd/tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

