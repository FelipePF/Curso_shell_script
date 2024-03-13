#!/usr/bin/env bash

NUM_1=12
NUM_2=10
str1="Felipe"
str2="ligado"

SOMA=$(($NUM_1 + $NUM_2))
echo $SOMA

if [[ $NUM_1 -eq $NUM_2 ]]; then
  #Retorna true se os valores são iguais
  echo "são iguais"
fi

if [[ $NUM_1 -ne $NUM_2 ]]; then
  #Retorna true se os valores não são iguais
  echo "Não são iguais"
fi

if [[ $NUM_1 -gt $NUM_2 ]]; then
  #Retorna true se o expr1 é maior que o expr2
  echo "NUM_1 é maior que NUM_2"
fi

if [[ $NUM_1 -ge $NUM_2 ]]
then
  #Retorna true se o expr1 é maior ou igual ao expr2
  echo "NUM_1 é maior ou igual que NUM_2"
fi

if [[ $NUM_1 -lt $NUM_2 ]]; then
  #Retorna true se o expr1 é menor que o expr2
  echo "NUM_1 é menor que NUM_2"
fi

if [[ $NUM_1 -le $NUM_2 ]]
then
  # Retorna trues se o expr1 é menor ou igual ao expr2
  echo "NUM_1 é menor ou igual que NUM_2"
fi

if [[ ! $NUM_1 ]]; then
  #Nega o resultado da expressão (se for true vira false e vice-versa)
  echo "Nega o resultado da expressão"
fi

if [[ $str1 = $str2 ]]; then
  echo "Strings iguais"
fi

if [[ $str1 != $str2 ]]; then
  echo "Strings não iguais"
fi

if [[ -n $str1 ]]; then
  # Retorna true se a String não é null
  echo "String str1 não é null"
fi
