#!/bin/bash

date=$(date +%F)
mkdir reporte_$date

cd reporte_$date

mensajeDirection=$(find / -name "message.txt")
mensaje=$($mensajeDirection)
echo -e "Hola, querido usuario, estos son los resultados:\nEl mensaje oculto en el programa es: "$mensaje > resultados.txt

directory=$1
direction=$(find / -type d -name $directory)
echo -e "\n\nDentro del diractorio o archivo $directory, se encuentran:\n" >> resultados.txt
ls $direction >> resultados.txt

file=$2
wordSearched=$3
filepath=$(find / -name "$file.txt")
result=$(grep $wordSearched $filepath | sort)
echo -e "\n\n$result\n\n" > coincidencias.txt

cd ..
