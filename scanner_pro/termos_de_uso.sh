#!/bin/bash

# Exibe os termos de uso
echo "Termos de Uso:"
echo "1. O usuário assume total responsabilidade pelo uso desta ferramenta."
echo "2. Não nos responsabilizamos por qualquer dano ou violação legal."
echo "3. Esta ferramenta é destinada apenas para fins educativos e testes éticos."
echo "4. A violação de leis locais é de responsabilidade do usuário."

# Confirmação do usuário
echo "Você concorda com os termos de uso? (s/n)"
read resposta

if [ "$resposta" != "s" ]; then
    echo "Você precisa aceitar os termos para continuar."
    exit 1
fi

echo "Termos aceitos. Continuando..."
