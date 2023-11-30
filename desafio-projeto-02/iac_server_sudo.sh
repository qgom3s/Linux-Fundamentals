#!/bin/bash

# SO Update
echo "Verificando e atualizando o servidor"
sudo apt-get update
sudo apt-get upgrade -y

echo "Atualização concluída."

# Installing the necessary programs
echo "Instalando o Apache2..."
sudo apt-get install apache2 -y

echo "Instalação do Apache2 concluída."

echo "Instalando o unzip..."
sudo apt-get install unzip -y

echo "Instalação do unzip concluída."

# Downloading, unpacking, and copying the file to the /tmp directory
URL="URL_DA_SUA_FONTE_AQUI"

DESTINO="/tmp"

echo "Baixando arquivos da URL fornecida..."
sudo wget -P "$DESTINO" "$URL"     # Use wget para baixar os arquivos

echo "Downloads concluídos no diretório /tmp."

DIR_FILES="Pasta-Arquivos-Descompactados"
mkdir -p "$DIR_FILES"

echo "Descompactando o arquivo baixado..."
sudo unzip "$DESTINO/*.zip" -d "$DESTINO/$DIR_FILES"

echo "Arquivos descompactados no diretorio $DESTINO/$DIR_FILES."

# Copying the files to the Apache default folder
echo "Copiando arquivos para o diretório padrão do Apache..."
sudo cp -r "$DESTINO/$DIR_FILES/*" /var/www/html/

echo "Arquivos copiados para o diretório padrão do Apache."

echo "Fim do processo. IaC para criação de servidor web Apache criado."