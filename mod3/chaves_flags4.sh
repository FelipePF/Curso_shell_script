#!/usr/bin/env bash
#
# chaves_flags.sh - mostra os usuários
#
# Site:       https://4fasters.com.br
# Autor:      FelipePF
# Manutenção: FelipePF
#
# ------------------------------------------------------------------------ #
#  Este programa irá mostrar os usuários usando o passwd
#
#  Exemplos:
#      $ ./listaUsuarios.sh -s -m
#      Neste exemplo o ficará em maiúscula e em ordem alfabética.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 03/10/2024, FelipePF:
#      - Adicionando os parametros -s, -h, -v
#   v1.0 03/10/2024, FelipePF:
#      - alterando if para case
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #
# ------------------------------- VARIÁVEIS ----------------------------------------- #

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="

$(basename $0) - [opcões]

    -h - Menu de ajuda
    -v - Versão
    -s - Ordenar a saída
    -m - Coloca em maiúsculo
"
VERSAO="1.2"
CHAVE_ORDENA=0
CHAVE_MAIUSCULA=0
# ------------------------------------------------------------------------ #
# ------------------------------- EXECUÇÃO ----------------------------------------- #

# if [[ $1 = "-h" ]]; then
#   echo "$MENSAGEM_USO" && exit 0
# fi
#
# if [[ $1 = "-v" ]]; then
#   echo "$VERSAO" && exit 0
# fi
#
# if [[ $1 = "-s" ]]; then
#   echo "$USUARIOS" | sort && exit 0
# fi
#
# echo "$USUARIOS"

case "$1" in
  -h) echo "$MENSAGEM_USO" && exit 0    ;;
  -v) echo "$VERSAO" && exit 0          ;;
  -s) CHAVE_ORDENA=1                    ;;
  -m) CHAVE_MAIUSCULA=1                 ;;
   *) echo "$USUARIOS"                  ;;
esac

[[ $CHAVE_ORDENA -eq 1 ]] && echo "$USUARIOS" | sort
[[ $CHAVE_MAIUSCULA -eq 1 ]] && cat /etc/passwd | cut -d : -f 1 | tr [a-z] [A-Z]

# ------------------------------------------------------------------------ #
