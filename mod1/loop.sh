#!/usr/bin/env bash

# loop.sh - Ensinando formas de usar o For
#
# Autor: Felipe PF
# GitHub: https://github.com/FelipePF
# Manutenção: Felipe PF
#
#-----------------------------------------#
# Testado em:
# zsh 5.8 (x86_64-debian-linux-gnu)
#
#-----------------------------------------#

clear
echo "
======= for 1"

for (( i = 0; i < 10; i++ )); do
  echo $i
done

echo "
======= for 2"
for i in $(seq 10)
do
  echo $i
done

echo "
======= for 3 (array)"

Frutas=(
"laranja"
"abacaxi"
"melão"
)

for i in "${Frutas[@]}" ; do
  echo "$i"
done

echo "
======= While"

cont=0
while [[ $cont -lt ${#Frutas[@]} ]]; do

  echo "$cont"
  cont=$(($cont+1))
done
