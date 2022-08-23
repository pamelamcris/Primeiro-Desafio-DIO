#!/bin/bash

echo "Criando os Diretórios..."
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando Grupos de Usuários..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando Usuários..."

sudo useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
sudo useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
sudo useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

echo "Usuários ADM Carlos, Maria, Joao, criados com sucesso!"

sudo useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
sudo useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
sudo useradd robeto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

echo "Usuários VENDAS Débora, Sebastiana e Roberto, criados com sucesso!"

sudo useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
sudo useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
sudo useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Usuários SECRETARIA Josefina, Amanda e Rogério, criados com sucesso!"


echo "Especificando permissões de acessos..."

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec 
sudo chmod 777 /publico

echo "Permissões de acessos definidas com sucesso!"

echo "Processo Concluido"
