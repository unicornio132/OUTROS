#!/bin/bash
USER="Thales"
PASS="123"
function CARQ(){
NOME=$(dialog --stdout --title "Nome" --inputbox "Digite o nome do arquivo" 0 0)
> $NOME
dialog --title "Informação" --msgbox "Arquivo criado com sucesso" 0 0
GARQ
}
function AARQ(){
NOME=$(dialog --stdout --title "Nome" --inputbox "Digite o nome do arquivo" 0 0)
rm -rf $NOME
dialog --title "Informação" --msgbox "Arquivo apagado com sucesso" 0 0
GARQ
}
function CDIR(){
NOME=$(dialog --stdout --title "Nome" --inputbox "Digite o nome do arquivo" 0 0)
mkdir $NOME
dialog --title "Informação" --msgbox "Diretório criado com sucesso" 0 0
GARQ
}
function ADIR(){
NOME=$(dialog --stdout --title "Nome" --inputbox "Digite o nome do arquivo" 0 0)
rmdir $NOME
dialog --title "Informação" --msgbox "Diretório apagado com sucesso" 0 0
GARQ
}
function LDIR(){
NOME=$(dialog --stdout --title "Nome" --inputbox "Digite o caminho" 0 0)
ls -la > /tmp/listar.txt
dialog --title "Listar" --textbox /tmp/listar.txt 0 0
GARQ
}

function GARQ(){
OPCAO=$(dialog								\
	--stdout							\
	--title "Gerenciador de arquivos"				\
	--menu "Escolha uma opção: "					\
	0 0 0								\
	1 "Criar Arquivos"						\
	2 "Apagar Arquivos"						\
	3 "Criar Diretórios"						\
	4 "Apagar Diretórios"						\
	5 "Listar Diretórios"						\
	6 "Voltar")

	case $OPCAO in
		1) CARQ ;;
		2) AARQ ;;
		3) CDIR ;;
		4) ADIR ;;
		5) LDIR ;;
		6) MENU ;;
		*) dialog --title "Opcao invalida." --msgbox "Digite novamente." 0 0 ; GARQ ;;
	esac
}
function GUSR(){
	dialog --title "Construção" --msgbox "Estamos em construção." 0 0
	MENU
}
function GRED(){
	dialog --title "Construção" --msgbox "Estamos em construção." 0 0
	MENU
}
function GDIS(){
	dialog --title "Construção" --msgbox "Estamos em construção." 0 0
	MENU
}
function GREP(){
	dialog --title "Construção" --msgbox "Estamos em construção." 0 0
	MENU
}
function ERRO(){
	ER=$?
	dialog --title "Opcao invalida." --msgbox "Erro: "$ER 0 0
	case $ER in
		1) dialog --msgbox "O usuário escolheu cancelar" 0 0 ;;
		255) dialog --msgbox "O usuário pressionou [ESC]" 0 0;;
		*) dialog --msgbox "Erro Desconhecido" 0 0 ;;
	esac
}

function MENU(){
OPCAO=$(dialog								\
	--stdout							\
	--title "Menu"							\
	--menu "Escolha uma opção: "					\
	0 0 0								\
	1 "Gerenciar Arquivos"						\
	2 "Gerenciar Usuários"						\
	3 "Gerenciar Rede"						\
	4 "Gerenciar Dispositivos"					\
	5 "Gerenciar Repositório"					\
	6 "Sair")

	case $OPCAO in
		1) GARQ ;;
		2) ./GUSR.sh ;;
		3) GRED ;;
		4) GDIS ;;
		5) GREP ;;
		6) FIM ;;
		*) ERRO ;;
	esac
}
function FIM(){
	dialog --title "Fim" --msgbox "Até breve" 0 0
	clear
	exit 0
}

MENU
