#!/bin/bash

# Los bloques while y until se ejecutan mientras una condición lógica sea
# verdadera o falsa, respectivamente:

i=1
while [ $i -lt 10 ]
do
  echo "Pasada $i"
  let i++
done
echo "Fin del while: i => $i"

i=1
until [ $i -lt 10 ]
do
  echo "Pasada $i"
  let i++
done
echo "Fin del until: i => $i"
