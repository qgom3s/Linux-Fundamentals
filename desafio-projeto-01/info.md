# Descrição do Desafio

Neste projeto crie um script onde toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões serão criadas automaticamente. Faça o upload do arquivo de script no GitHub para futuras reutilizações do script.

## Pré-requisitos:

- Linux e GitHub.

## Estrutura e Definições

A estrutura do projeto IaC está organizada na tabela abaixo:
Diretório   | Grupo   | Usuários
--------- | :------: | ------
publico | - | all
adm | GRP_ADM | Carlos, Maria, Joao
ven | GRP_VEN | Debora, Sebastiana, Roberta
sec | GRP_SEC | Josefina, Amanda, Rogerio

Tarefas:
- O provisionamento deve ser feito em um arquivo do tipo Bash Script;
- O dono de todos os diretórios criados será o usuário root;
- Todos os usuários terão permissão total dentro do diretório publico;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem e,
- Subir arquivo de script criado para a sua conta no GitHub.
