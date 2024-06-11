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
"
VERSAO="1.1"

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
  -s) echo "$USUARIOS" | sort && exit 0 ;;
   *) echo "$USUARIOS"                  ;;
esac


# ------------------------------------------------------------------------ #
