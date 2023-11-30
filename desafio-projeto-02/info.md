# Descrição do Desafio

> Neste projeto crie um script onde será provisionado um servidor web automaticamente.

## Pré-requisitos:

- Linux e GitHub.

## Definições e Estrutura
Um servidor web é um software e hardware que usa HTTP (Hypertext Transfer Protocol) e outros protocolos para responder a solicitações de clientes feitas pela World Wide Web. O principal trabalho de um servidor da web é exibir o conteúdo do site por meio do armazenamento, processamento e entrega de páginas da web aos usuários.

O script para criação do web server precisa:
- Atualizar o servidor;
- Instalar o apache2;
- Instalar o unzip;
- Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp e,
- Copiar os arquivos da aplicação no diretório padrão do apache;
Subir arquivo de script para um repositório no GitHub.


## Como Utilizar o Script

Salve esse conteúdo em um arquivo com a extensão .sh, por exemplo, `nome_que_desejar.sh`, e dê permissão de execução com o comando `chmod +x nome_que_desejar.sh`. Depois, você pode executar o script com `./nome_que_desejar.sh` no terminal.

Certifique-se de ter privilégios de administrador (sudo) para executar esses comandos de atualização ou use o script para super usuário (root).

- Administrator, use o script `iac_server_sudo.sh`.
- Super usuário, use o script `iac_server_root.sh`.

O script `challenge_solution.sh` contém a execução da atividade.