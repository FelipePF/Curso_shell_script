#!/usr/bin/env bash
#
# Ilustar_triangulo.sh - Exibe um triângulo usando *
#
# Site:       https://github.com/FelipePF
# Autor:      FelipePF
# Manutenção: FelipePF
#
# ------------------------------------------------------------------------ #
#  Exibe um triângulo usando *
#
#  Exemplos:
#      $ ./cotarBitcoin.sh -d 1
#      Neste exemplo o script será executado no modo debug nível 1.
# -------------------------------------------------------------------------#
# Testado em:
#   zsh 5.8
# ------------------------------- VARIÁVEIS ----------------------------------------- #

comeca=0 ate=100;

# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

# Caso comeca >= ate, ele cancela a execução
[ $comeca -ge $ate ] && exit 1

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
for i in $(seq $comeca $ate);do
  for j in $(seq $i $ate);do
    printf "*";
  done
  printf "\n";
done
