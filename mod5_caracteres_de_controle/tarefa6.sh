#!/usr/bin/bash
#
# Ilustar_triangulo.sh - Exibe uma variedade de opções *
#
# Site:       https://github.com/FelipePF
# Autor:      FelipePF
# Manutenção: FelipePF
#
# ------------------------------------------------------------------------ #
#  Exibe uma variedade de opções *
#
#  Exemplos:
#      $ ./tarefa_4.sh
# -------------------------------------------------------------------------#
# Testado em:
#   zsh 5.8
# ------------------------------- VARIÁVEIS ----------------------------------------- #
P_LINHA="
"
DISCOS="$(lsblk)"
KERNEL="$(uname -r)"
FLATPAKS="$(flatpak list)"
TUDO="$(echo $REPOSITORIO && echo $P_LINHA && echo $KERNEL && echo $P_LINHA && echo $FLATPAKS)"

AZUL="\033[34;1;1m"
ROXO="\033[35;1m"
VERMELHO="\033[31;1;1m"
VERDE="\033[32;1;1m"

# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #



# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #


# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

while [[ $opcao -ne 1 && $opcao -ne 2 && $opcao -ne 3 && $opcao -ne 4 ]]; do
 echo -e "O que gostaria de Visualizar?
 ${AZUL}1. Discos e partições
 ${VERDE}2. Versão do kernel
 ${ROXO}3. Lista de Flatpak
 ${VERMELHO}4. tudo"
 read opcao
done

if [[ $opcao -eq 1 ]]; then
 echo "$DISCOS"
fi


if [[ $opcao -eq 2 ]]; then
 echo "$KERNEL"
fi


if [[ $opcao -eq 3 ]]; then
 echo "$FLATPAKS"
fi


if [[ $opcao -eq 4 ]]; then
 echo "$TUDO"
fi
