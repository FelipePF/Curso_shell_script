#!/usr/bin/env bash
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
