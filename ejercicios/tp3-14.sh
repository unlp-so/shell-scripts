#!/bin/bash

function ayuda {
  echo "Este script renombra los archivos del directorio pasado como primer"
  echo "parámetro agregando un string (recibido como tercer parámetro) al"
  echo "principio o al final del nombre actual del archivo, en función del"
  echo "segundo parámetro recibido, con las siguientes posibles opciones para"
  echo "éste último parámetro:"
  echo
  echo "  -a    agrega el string al final del nombre del archivo"
  echo "  -b    agrega el string al principio del nombre del archivo"
  echo
  echo "Por ejemplo:"
  echo
  echo "  $0 `pwd` -a _sufijo"
  echo "  $0 `pwd` -b prefijo_"
}

if [ $# -ne 3 ]; then
  ayuda
  exit 1
fi

if [ ! -d $1 ]; then
  echo "El directorio pasado como parámetro ($1) no existe."
  exit 2
fi

if [ "$2" != "-a" ] && [ "$2" != "-b" ]; then
  echo "El flag pasado como segundo parámetro ($2) no es válido."
  echo "Debería ser -a o -b"
  exit 3
fi

pushd $1
for archivo in $(ls); do
  if [ ! -f $archivo ]; then
    continue
  fi

  if [ $2 = "-a" ]; then
    mv $archivo $archivo$3
  else
    mv $archivo $3$archivo
  fi
done
popd