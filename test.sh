#!/bin/bash
# Exemplos de uso do TEST

test -e arquivo.txt && echo "ARQUIVO EXISTE" || echo "ARQUIVO NAO EXISTE"
test -h link.txt && echo "LINK EXISTE" || echo "LINK NAO EXISTE"

