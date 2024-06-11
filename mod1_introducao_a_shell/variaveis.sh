#!/usr/bin/env bash

NOME="Felipe
PF"
echo "$NOME"

# Usar $NOME ele retorna o valor da variável,
# caso esteja com aspas "$NOME" ele devolve formatado.

NUM_1=20
NUM_2=14
TOTAL=$(($NUM_1+$NUM_2))
echo $TOTAL

SAIDA_CAT="$( cat /etc/passwd | grep aluno)"
echo "$SAIDA_CAT"

# $() é usado para comandos
# $(()) é usado para contas

echo "-----------------------"

# Variáveis reservadas

echo "Parametro_1: $1"
echo "Parametro_2: $2"

echo "Mostrar todos os paramentos: $*"

echo "Quantos parametros: $#"

echo "Saida do último comando: $?" # Geralmente 0 é funcina, 1 é erro

echo "PID: $$"

echo "Nome do script: $0"
