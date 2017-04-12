#!/bin/bash
# Uso do elif

clear
read -p "Você é menino? " MENIN
if [ $MENIN == "Sim" ]; then
	echo "Você é Benino"
elif [ $MENIN == "SIM" ]; then
	echo "Você é Benino"
elif [ $MENIN == "sim" ]; then
	echo "Você é Benino"
elif [ $MENIN == "Yes" ]; then
	echo "Você é Benino"
elif [ $MENIN == "Y" ]; then
	echo "Você é Benino"
else
	echo "Você não é Benino"
fi

