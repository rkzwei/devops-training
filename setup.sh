#! /bin/bash

echo "Executando script de set up de Infraestrutura"

echo "Criando pastas"
sleep 0.3

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"
sleep 0.3

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"
sleep 0.3

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd carlos)
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd maria)
useradd joao -c "Carlos" -m -s /bin/bash -p $(openssl passwd joao)

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd debora)
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd sebastiana)
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd roberto)\

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd josefina)
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd amanda)
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd rogerio)

echo "Atribuindo usuarios a grupos"
sleep 0.3

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Modificando permissões"
sleep 0.3

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Modificando pastas"
sleep 0.3

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Finalizado!"
