#!/bin/bash

# Check if the script is being executed as root
if [[ $EUID -ne 0 ]]; then
   echo "Este script precisa ser executado como root. Execute-o usando sudo."
   exit 1
fi

echo "Executando como root..."

# SO Update
echo "Atualizando a lista de pacotes..."
apt update
apt upgrade -y

# Installing the necessary programs
echo "Instalando o Apache2..."
apt install apache2 -y

echo "Instalando o unzip..."
apt install unzip -y

echo "Instalação dos programas concluída."


# Downloading, unpacking, and copying the file to the /tmp directory
URL="URL_DA_SUA_FONTE_AQUI"

DESTINO="/tmp"

echo "Baixando arquivos da URL fornecida..."
wget -P "$DESTINO" "$URL"     # Use wget para baixar os arquivos

echo "Downloads concluídos no diretório /tmp."

# Copying the files to the Apache default folder
echo "Copiando arquivos para o diretório padrão do Apache..."
cp -r "$DESTINO/*" /var/www/html/

echo "Arquivos copiados para o diretório padrão do Apache."

echo "Fim do processo. IaC para criação de servidor web Apache."