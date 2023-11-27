#!/bin/bash

# Função para criar usuários
criar_usuarios() {
    if [ $# -eq 0 ]; then
        echo "Por favor, forneça pelo menos um nome de usuário como parâmetro."
        return 1
    fi

    for novo_usuario in "$@"; do
        # Verifica se o usuário já existe
        if id "$novo_usuario" &>/dev/null; then
            echo "O usuário $novo_usuario já existe."
        else
            sudo useradd "$novo_usuario"
            echo "Usuário $novo_usuario criado com sucesso."
        fi
    done
}

# Chamada da função com vários nomes de usuário como parâmetros
criar_usuarios "$@"
