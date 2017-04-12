#!/bin/bash
# Exemplo de uso do for


for i in {1..20}; do #Uma forma de contar de 1 a 20
	echo -n "$i, "
done
echo
sleep 3
for x in {A..z}; do #Uma forma de contar de A(Maiusculo) a z(Minusculo)
	echo -n "$x, " #Vide tabela ASCII
done
echo
sleep 3
for (( y=0; y<=40; y=y+4 )); do #outra forma de contar até 20
	echo "$y, "
done
sleep 3
for USER in $(cat lista.txt); do
	useradd $USER
done
