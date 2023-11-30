#!/bin/bash

# Verifica se o script está sendo executado como root
if [[ $EUID -ne 0 ]]; then
   echo "Este script precisa ser executado como root. Execute-o usando sudo."
   exit 1
fi

echo "Executando como root..."

# Atualiza a lista de pacotes
echo "Atualizando a lista de pacotes..."
apt update
apt upgrade -y

# Instalando os programas necessários
echo "Instalando o Apache2..."
apt install apache2 -y

echo "Instalando o unzip..."
apt install unzip -y

echo "Instalação dos programas concluída."


# Realizando o download, descompactando e copiando o arquivo para o diretório padrão do Apache.
URL="URL_DA_SUA_FONTE_AQUI"

DESTINO="/tmp"

echo "Baixando arquivos da URL fornecida..."
wget -P "$DESTINO" "$URL"     # Use wget para baixar os arquivos

echo "Downloads concluídos no diretório /tmp."

# Copia os arquivos descompactados para o diretório padrão do Apache
echo "Copiando arquivos para o diretório padrão do Apache..."
cp -r "$DESTINO/*" /var/www/html/

echo "Arquivos copiados para o diretório padrão do Apache."

echo "Fim do processo. IaC para criação de servidor web Apache."