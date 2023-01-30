#!/bin/bash


# Comprobamos que el directorio existe
if [ ! -d "$1" ]
then
    echo "Error: El directorio $1 no existe."
    exit 1
fi

# Borramos los ficheros .txt
COUNT=`find "$1" -name "*.txt" -type f -delete | wc -l`

# Mostramos el resultado
echo "Se han borrado $COUNT ficheros .txt"
