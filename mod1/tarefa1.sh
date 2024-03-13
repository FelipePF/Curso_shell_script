#!/usr/bin/env bash

if [[ $1 -gt 10 ]]; then
  echo "É maior que 10"
  echo "Nome do arquivo:$0"
  echo "PID: $$"
fi
