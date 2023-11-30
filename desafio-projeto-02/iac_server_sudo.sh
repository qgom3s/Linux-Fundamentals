#!/bin/bash

# SO Update
echo "Verificando e atualizando o servidor"
sudo apt update
sudo apt upgrade -y

echo "Atualização concluída."

# Installing the necessary programs
echo "Instalando o Apache2..."
sudo apt install apache2 -y

echo "Instalação do Apache2 concluída."

echo "Instalando o unzip..."
sudo apt install unzip -y

echo "Instalação do unzip concluída."

# Downloading, unpacking, and copying the file to the /tmp directory
URL="URL_DA_SUA_FONTE_AQUI"

DESTINO="/tmp"

echo "Baixando arquivos da URL fornecida..."
sudo wget -P "$DESTINO" "$URL"     # Use wget para baixar os arquivos

echo "Descompactando o arquivo baixado..."
sudo unzip "$DESTINO/*.zip" -d "$DESTINO"

echo "Downloads concluídos e arquivo descompactado no diretório /tmp."

# Copying the files to the Apache default folder
echo "Copiando arquivos para o diretório padrão do Apache..."
sudo cp -r "$DESTINO/*" /var/www/html/

echo "Arquivos copiados para o diretório padrão do Apache."

echo "Fim do processo. IaC para criação de servidor web Apache."