#!/bin/bash
#oi
OPCAO=$(dialog								\
	--stdout							\
	--title "Gerenciador de usuários"				\
	--menu "Escolha uma opção: "					\
	0 0 0								\
	1 "Criar Usuário"						\
	2 "Apagar Usuário"						\
	3 "Criar Grupo"							\
	4 "Apagar Grupo"						\
	5 "Listar /etc/passwd"						\
	6 "Voltar")

	case $OPCAO in
		1) CARQ ;;
		2) AARQ ;;
		3) CDIR ;;
		4) ADIR ;;
		5) LDIR ;;
		6) /home/vagrant/projeto.sh ;;
		*) dialog --title "Opcao invalida." --msgbox "Digite novamente" 0 0 ; GARQ ;;
	esac
