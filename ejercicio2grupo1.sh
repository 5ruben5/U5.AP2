#!/bin/bash

#Declaración de variables
pares=0
impares=0

#Lectura del fichero
while read line; do
  if [ $(($line % 2)) -eq 0 ]; then
    echo "El número $line es par"
    let pares=$pares+1
  else
    echo "El número $line es impar"
    let impares=$impares+1
  fi
done < numeros.txt

#Mostrar los resultados
echo "Total de números pares: $pares"
echo "Total de números impares: $impares"
