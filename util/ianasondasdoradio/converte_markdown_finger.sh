#!/bin/bash

# Recebe o nome do arquivo como argumento
arquivo="$1"

# Verifica se o arquivo foi passado como argumento
if [ -z "$arquivo" ]; then
  echo "Uso: $0 nome_do_arquivo"
  exit 1
fi

# Lê o arquivo, inverte a ordem das linhas e formata a saída em markdown
awk -F ' \| ' '{
  titulo=$1
  url=$2
  # Extrai apenas o dia da data (primeiras 4 partes)
  split($3, a, " ")
  data_formatada=a[1] " " a[2] " " a[3] " " a[4]
  print "- [" titulo "](" url ") - " data_formatada
}' "$arquivo" | tac
