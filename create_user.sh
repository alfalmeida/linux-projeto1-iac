#! /bin/bash

echo "Criando diretórios."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando aos grupos."

useradd carlos -c "Usuário Carlos" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd carlos -e
useradd maria -c "Usuário Maria" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd maria-e
useradd joao -c "Usuário João" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Usuário Debora" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Usuário Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Usuário Roberto" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Usuário Josefina" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Usuário Amanda" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Usuário Rogério" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd rogerio -e

echo "Aplicando permissões aos diretórios."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado."