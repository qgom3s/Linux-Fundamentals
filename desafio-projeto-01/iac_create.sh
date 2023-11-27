#!/bin/bash

echo "Directory creating..."

mkdir /publico /adm /ven /sec

echo "Directory created!"

echo "Groups creating..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Groups created!"

echo "Users creating..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd roberta -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC

echo  "Users created!"

#echo "Adding users to their respective groups..."
# usermod -a -G GRP_ADM name_here
# to make the script simpler, groups were added when users were created.

echo "Configuring directory permissions..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm /ven /sec
chmod 777 /publico # There is no need to specify the owner of the 'public' directory, as by default it will be root.

echo "End of process. IaC framework created."