#!/usr/bin/env bash

var=""
var2=""

if [[ "$var" = "$var2" ]]; then
  #statements
  echo "são iguais1"
fi

# Outra maneira:


if [[ "$var" = "$var2" ]]
then
  #statements
  echo "são iguais2"
fi

# Usando test

if test "$var" = "$var2"; then
  echo "são iguais3"
fi

# Se verdade, faz a ação
[ "$var" = "$var2" ] && echo "são iguais4"

# Se falso, faz a ação
[ "$var" = "$var2" ] || echo "são iguais5"
