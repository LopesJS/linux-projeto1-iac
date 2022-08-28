#!/bin/bash

echo "Criando direórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionar aos grupos..."

useradd carlos -c "Carlos Vidal" -s /bin/bash -m -p Senha123 -G GRP_ADM
useradd maria -c "Maria de Lurdes Vieira" -s /bin/bash -m -p Senha123 -G GRP_ADM
useradd joao -c "João Dornelles Fernandes" -s /bin/bash -m -p Senha123 -G GRP_ADM

useradd debora -c "Débora Mathias" -s /bin/bash -m -p Senha123 -G GRP_VEN
useradd sebastiana -c "Sebastiana Oliveira" -s /bin/bash -m -p Senha123 -G GRP_VEN
useradd roberto -c "Roberto Carlos" -s /bin/bash -m -p Senha123 -G GRP_VEN

useradd josefina -c "Josefina da Silva" -s /bin/bash -m -p Senha123 -G GRP_SEC
useradd amanda -c "Amanda Cardoso" -s /bin/bash -m -p Senha123 -G GRP_SEC
useradd rogerio -c "Rogério Àvila" -s /bin/bash -m -p Senha123 -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim"
