#!/bin/bash

# Inicializar variables
usuariosLinux=0
procesosLinux=0
usuariosWindows=0
procesosWindows=0

# Procesar fichero
while read linea
do
	# Separar campos
	usuario=$(echo $linea | cut -d' ' -f1)
	so=$(echo $linea | cut -d' ' -f2)
	procesos=$(echo $linea | cut -d' ' -f3)
	
	if [ "$so" == "Linux" ]; then
		let usuariosLinux++
		let procesosLinux=$procesosLinux+$procesos
	elif [ "$so" == "Windows" ]; then
		let usuariosWindows++
		let procesosWindows=$procesosWindows+$procesos
	fi
done < listado.txt

# Mostrar resultados
echo "Linux: $usuariosLinux usuarios con un total de $procesosLinux procesos"
echo "Windows: $usuariosWindows usuarios con un total de $procesosWindows procesos"
