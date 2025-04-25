#!/bin/bash

# E-mail do destinatário (depois de verificação)
echo "Digite o e-mail para onde deseja enviar os resultados:"
read email

# Nome do arquivo txt com os resultados do Nuclei
result_file="nuclei_results.txt"

# Converte o arquivo de texto em um arquivo HTML simples
echo "<html><body><h2>Resultados do Scan</h2><pre>" > results.html
cat $result_file >> results.html
echo "</pre></body></html>" >> results.html

# Envia o HTML como link no e-mail (assumindo que você tenha um servidor de e-mail configurado)
echo "Os resultados do scan estão disponíveis no seguinte link: http://meu-servidor.com/results.html" | msmtp $email

echo "E-mail enviado com sucesso para $email!"
