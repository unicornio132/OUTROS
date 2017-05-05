#!/bin/bash
USER="Thales"
PASS="123"

#read -p "Usuario: " USUARIO
USUARIO=$(dialog					\
		--stdout				\
		--title "Login"				\
		--inputbox "Digite seu usuário"		\
		0 0)
#read -s -p "Senha: " SENHA
SENHA=$(dialog						\
		--stdout				\
		--title "Login"				\
		--passwordbox "Digite sua senha"	\
		0 0)

[ $USUARIO == $USER ] && [ $SENHA == $PASS ] && /home/vagrant/projeto.sh || exit 0 
