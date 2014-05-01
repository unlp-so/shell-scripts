#!/bin/bash

# Para validar la cantidad de parámetros de un script o una función, podemos
# utilizar el comando `test` y algunos de sus test flags:

if [ $# -ne 3 ]; then
  echo El script no recibió 3 parámetros
  # Lo más común en este punto sería retornar un exit code > 0 (error)
  # exit 1
fi

if [ $# -lt 2 ]; then
  echo El script recibió menos de 2 parámetros
  # exit 2
fi

if [ $# -gt 0 ] && [ -z $1 ]; then
  echo El script recibió parámetros, pero el primero está en blanco
  # exit 3
fi
