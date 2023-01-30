#!/bin/bash

# Esta variable almacenara la media de las precipitaciones
media=0

# Esta variable almacenara el numero de lineas del fichero
numLineas=0

# Se lee el fichero linea a linea
while read linea
do
	# Se guarda el valor del campo litros en la variable litros
	litros=`echo $linea | cut -d " " -f2`

	# Se acumulan los litros en la variable media
	media=$(($litros+$media))

	# Se incrementa el numero de lineas
	numLineas=$(($numLineas+1))
done < precipitaciones.txt

# Se calcula la media final
media=$(($media/$numLineas))

# Se muestra por pantalla la media
echo La media de precipitaciones es $media litros
