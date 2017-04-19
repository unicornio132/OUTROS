#!/bin/bash
var=0
clear
echo Oi

while [ $var != 1 ]; do
	dialog --yesno "Sai?" 0 0 && var=1 && clear && echo Saiu!
done
