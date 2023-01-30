#!/bin/bash

echo "Los días que no llovió fueron: "

#Leemos el archivo
while read line
do
	#Cogemos el valor de la columna 2
	dia=$(echo $line | cut -d " " -f2)
	#Si es 0 es que no llovió
	if [ $dia -eq 0 ]; then
		#Mostramos el día
		echo $(echo $line | cut -d " " -f1)
	fi
done < precipitaciones.txt
