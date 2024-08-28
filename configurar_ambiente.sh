#!/bin/bash

cd /home
echo "Criando diretórios..."
mkdir /publico /adm /ven /sec

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Alterando dono dos diretórios..."
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

echo "Alterando permissões dos diretórios..."
chmod 770 adm
chmod 770 ven
chmod 770 sec
chmod 777 publico

echo "Criando usuário..."
useradd carlos -s /bin/bash -m -c "Carlos" -G GRP_ADM
useradd maria  -s /bin/bash -m -c "Maria" -G GRP_ADM
useradd joao -s /bin/bash -m -c "Joao" -G GRP_ADM

useradd debora -s /bin/bash -m -c "Debora" -G GRP_VEN
useradd sebastiana -s /bin/bash -m -c "Sebastiana" -G GRP_VEN
useradd roberto -s /bin/bash -m -c "Roberto" -G GRP_VEN

useradd josefina -s /bin/bash -m -c "Josefina" -G GRP_SEC
useradd amanda -s /bin/bash -m -c "Amanda" -G GRP_SEC
useradd rogerio -s /bin/bash -m -c "Rogerio" -G GRP_SEC

echo "Configurações concluidas com sucesso!"
