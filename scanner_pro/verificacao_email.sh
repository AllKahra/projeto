#!/bin/bash

# Gerar um código aleatório de verificação
verification_code=$(openssl rand -base64 6 | tr -d /=+ | head -c 6)

# Solicita o e-mail do usuário
echo "Digite seu e-mail para envio do código de verificação:"
read email

# Enviar o código por e-mail (usando um serviço como msmtp, sendmail, ou um script em Python)
echo "Seu código de verificação é: $verification_code" | msmtp $email

# Solicita que o usuário insira o código
echo "Digite o código de verificação enviado para seu e-mail:"
read input_code

if [ "$input_code" != "$verification_code" ]; then
    echo "Código de verificação incorreto. Tente novamente."
    exit 1
fi

echo "Código verificado com sucesso!"
