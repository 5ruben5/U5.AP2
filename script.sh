#!/bin/bash

echo "Introduzca el numero de directorios a crear"
read X

for NAME in $(cat nombres.txt)
do
  mkdir -p $NAME
  for ((i=1;i<=$X;i++))
  do
    mkdir $NAME/${NAME}_$i
  done
done


