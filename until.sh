#!/bin/bash
# Exemplo de UNTIL
clear
MAGIC="ODIO"
until [ $MAGIC == "AMOR" ]; do
	read -p "Qual a palavra Mágica?" MAGIC
	echo
done
