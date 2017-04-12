#!/bin/bash
# Exemplos de uso do while
USER=Thales
PASS=123
MENU=1
while [ $MENU != 0 ]; do
	read -p "Digite seu usuario: " USUARIO
	read -s -p "Digite sua senha: " SENHA
	echo
	if [ $USUARIO == $USER -a $SENHA == $PASS ]; then
		echo "Passou"
		MENU=0
	else
		echo "Não Passou"
	fi
done
