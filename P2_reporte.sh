oldDate=$(date +%F)
IFS='/' read -r -a date <<< $oldDate
mkdir -p reporte_$date/{resultados.txt,coincidencias.txt}

mensajeDirection=$(locate -b '\message.txt')
mensaje=$(cat $mensajeDirection)
echo -e "Hola, querido usuario, estos son los resultados:\nEl mensaje oculto en el programa es:" > resultados.txt
echo $mensaje

directory=$1
direction=$(locate -b '\$directory')
ls $direction

file=$2
wordSearched=$3
result=$(grep $wordSearched $(locate -b '\$file') | sort)
echo -e "$result\n" >> coincidencias.txt
