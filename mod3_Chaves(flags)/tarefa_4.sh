 #!/usr/bin/env bash
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
 REPOSITORIO="$(lsblk)"
 KERNEL="$(uname -r)"
 FLATPAKS="$(flatpak list)"
 TUDO="$(echo $REPOSITORIO && echo $P_LINHA && echo $KERNEL && echo $P_LINHA && echo $FLATPAKS)"

 # ------------------------------------------------------------------------ #

 # ------------------------------- TESTES ----------------------------------------- #



 # ------------------------------------------------------------------------ #

 # ------------------------------- FUNÇÕES ----------------------------------------- #

 # ------------------------------------------------------------------------ #

 # ------------------------------- EXECUÇÃO ----------------------------------------- #
 while [[ $opcao -ne 1 && $opcao -ne 2 && $opcao -ne 3 && $opcao -ne 4 ]]; do
  echo "O que gostaria de Visualizar?
  1. Discos e partições
  2. Versão do kernel
  3. Lista de Flatpak
  4. tudo"
  read opcao
 done

if [[ $opcao -eq 1 ]]; then
  echo "$REPOSITORIO"
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
