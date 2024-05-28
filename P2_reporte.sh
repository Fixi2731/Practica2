updatedb

oldDate=$(date +%F)
IFS='/' read -r -a date <<< $oldDate
mkdir -p reporte_$date/{resultados.txt,coincidencias.txt}

mensajeDirection=$(locate -b '\message.txt')
mensaje=$($mensajeDirection)
echo -e "Hola, querido usuario, estos son los resultados:\nEl mensaje oculto en el programa es: "$mensaje > resultados.txt

directory=$1
direction=$(locate -n 1 -b '\$directory')
echo -e "------------------ \n a"
ls $direction

file=$2
wordSearched=$3
filepath=$(locate -b '\$file')
echo $filepath
	
result=$(grep $wordSearched $filepath)
echo -e "$result\n" >> coincidencias.txt
