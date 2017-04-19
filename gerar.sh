#!/bin/bash

MENU(){
clear
#echo "
#1) Criar arquivo
#2) Apagar arquivo
#3) Criar diretorio
#4) Apagar diretorio
#5) Sair
#"
#read -p "Digite uma opcao: " OPCAO

OPCAO=$( dialog			\
	--stdout		\
	--menu "Opções"		\
	0 0 0			\
	1 "Criar arquivo"	\
	2 "Apagar arquivo"	\
	3 "Criar diretorio"	\
	4 "Apagar diretorio"	\
	5 "Sair"		)



case $OPCAO in
	1) CARQ ;;
	2) AARQ ;;
	3) CDIR ;;
	4) ADIR ;;
	5) clear; exit 0 ;;
	*) echo "Opção Invalida. Digite novamente"; PRESSIONE ;;
esac
}

PRESSIONE(){
	dialog --msgbox "Pressione [enter] para finalizar" 0 0
}

CARQ(){
	NOME=$(	dialog --stdout --inputbox "Digite o nome do arquivo" 0 0)
	> $NOME
	PRESSIONE
	MENU
}
AARQ(){
	NOME=$(	dialog --stdout --inputbox "Digite o nome do arquivo" 0 0)
	rm -rf $NOME
	PRESSIONE
	MENU
}
CDIR(){
	NOME=$(	dialog --stdout --inputbox "Digite o nome do arquivo" 0 0)
	mkdir $NOME
	PRESSIONE
	MENU
}
ADIR(){
	NOME=$(	dialog --stdout --inputbox "Digite o nome do arquivo" 0 0)
	rm -rf $NOME
	PRESSIONE
	MENU
}

MENU
