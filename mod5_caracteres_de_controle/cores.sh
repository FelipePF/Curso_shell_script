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
CHAVE_DEBUG=0
NIVEL_DEBUG=0
AMARELO="\033[33;51m"
ROXO="\033[35;1m"
# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

debugar () {

  [ $1 -le $NIVEL_DEBUG  ] && echo -e "${2}Debug $* -----"

}


Soma () {

  local total=0

for i in $(seq 1 25); do

  debugar 1 "${ROXO}" "Entrei no for com o valor: $i"
  total=$(( $total+$i ))
  debugar 2 "${AMARELO}" "Depois da soma: $total"
done
echo $total

}


# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

case "$1" in
  -d) [ $2 ] && NIVEL_DEBUG=$2 && Soma ;;
   *) Soma                             ;;
esac


# ------------------------------------------------------------------------ #
