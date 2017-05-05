#!/bin/bash

dialog --title 'Criar Arquivo' 						\
	--yesno 'Devo criar o arquivo < Yes > ou o arquivo < No >?' 	\
	7 35

case $? in
	0) > yes.txt ;;
	1) > no.txt ;;
	255) echo "Programa Terminou sem fazer nada"; exit 111 ;;
	*) echo "Erro não previsto"; exit 123 ;;
esac
