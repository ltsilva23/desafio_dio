#!/bin/bash
# Autor: Larissa Thalia
# Data: 26/03/2025


# Criar diretório
echo "Criando diretórios..."

mkdir /publico 
mkdir /adm 
mkdir /ven 
mkdir /sec

echo "Diretórios criados com sucesso!"

# Criar grupos
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

# Criar usuários e atribuí-los aos grupos
echo "Criando usuários..."
useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebatiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Usuários criados com sucesso!"

# Configurar permissões em diretórios
echo "Configurando permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

# Concluir
echo "Configuração concluída!"