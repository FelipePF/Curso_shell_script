#!/usr/bin/env bash

for i in $(seq 0 10); do

resto=$(( $i % 2 ))

if [[ $resto -eq "0" ]]; then
echo "O número $i tem resto: $resto"
fi

done
