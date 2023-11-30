#!/bin/bash

# Check if the script is being executed as root
if [[ $EUID -ne 0 ]]; then
   echo "Este script precisa ser executado como root. Execute-o usando sudo."
   exit 1
fi

echo "Executando como root..."

# SO Update
echo "Atualizando a lista de pacotes..."
apt-get update
apt-get upgrade -y

# Installing the necessary programs
echo "Instalando o Apache2..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Instalação dos programas concluída."

# Downloading, unpacking, and copying the file to the /tmp directory
URL="https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"

DESTINO="/tmp"

echo "Baixando arquivos da URL fornecida..."
wget -P "$DESTINO" "$URL"     # Use wget para baixar os arquivos

echo "Downloads concluídos no diretório /tmp."

DIR_FILES="linux-site-dio-main"
mkdir -p "$DIR_FILES"

echo "Descompactando o arquivo baixado..."
unzip "$DESTINO/*.zip" -d "$DESTINO/$DIR_FILES"

echo "Arquivos descompactados no diretorio $DESTINO/$DIR_FILES."

# Copying the files to the Apache default folder
DIR_FILES="linux-site-dio"
echo "Copiando arquivos para o diretório padrão do Apache..."
cp -r "$DESTINO/$DIR_FILES/*" /var/www/html/

echo "Arquivos copiados para o diretório padrão do Apache."

echo "Fim do processo. IaC para criação de servidor web Apache criado."