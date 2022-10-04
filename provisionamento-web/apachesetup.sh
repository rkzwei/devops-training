#! /bin/bash

echo "Executando setup de criação de servidor"

echo "Verificando atualizações"

apt update 

echo "Atualizando sistema"

apt upgrade -y

echo "Instalando Apache"

apt install apache2 -y

echo "Instalando unzip"

apt install unzip -y 

echo "Recebendo e descompactando arquivos do repositório remoto"

wget -P /tmp http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip /tmp/main.zip

echo "Movendo arquivo para pasta do apache"

cp -R /tmp/linux-site-dio/* /var/www/html/

echo "Finalizado"
