#!/bin/bash

# E-mail do destinatário
echo "Digite o e-mail para enviar os resultados:"
read email

# Nome do arquivo de resultados HTML
html_file="results.html"

# Upload do arquivo HTML para o servidor (opcional, se você quiser hospedá-lo)
# Aqui está um exemplo fictício de como você pode fazer isso:
scp $html_file usuario@servidor:/caminho/para/pasta/results.html

# Envia um e-mail com o link para o arquivo HTML hospedado
echo "Os resultados estão disponíveis no seguinte link: http://meu-servidor.com/results.html" | msmtp $email

echo "Link de resultados enviado com sucesso!"
