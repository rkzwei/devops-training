#! /bin/bash

echo "Executando setup de criação de servidor"

echo "Verificando atualizações"

apt-get update 

echo "Atualizando sistema"

apt-get upgrade -y

echo "Instalando Apache"

apt-get install apache2 -y

echo "Instalando unzip"

apt-get install unzip -y 


echo "Recebendo e descompactando arquivos do repositório remoto"

cd /tmp

wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

echo "Movendo arquivo para pasta do apache"

cd linux-site-dio-main

cp -R * /var/www/html/

echo "Finalizado"


