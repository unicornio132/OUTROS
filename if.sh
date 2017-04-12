#!/bin/bash
# Exemplos de uso do while
USER=Thales
PASS=123
read -p "Digite seu usuario: " USUARIO
read -s -p "Digite sua senha: $\n" SENHA
if [ $USUARIO == $USER -a $SENHA == $PASS ]; then
	echo "Passou"
else
	echo "Não Passou"
fi
