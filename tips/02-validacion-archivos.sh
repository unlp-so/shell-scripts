#!/bin/bash

# El comando test permite realizar chequeos sobre los archivos del filesystem
# (para el usuario que ejecuta el script).
#
# Entre otros, los flags más comunes son los que permiten chequear los tipos de
# los archivos y los permisos que se tienen sobre éstos:

if [ $# -eq 0 ]; then
  echo Este script espera recibir un parámetro, que será utilizado como path.
  echo Por ejemplo, podemos ejecutar:
  echo "    $0 ."
  echo para realizar los chequeos sobre el directorio actual
  exit 1
fi

path=$1

# Sencilla función que ejecuta el comando test pasándole como test flag el
# primer parámetro recibido (-e, -d, -f, etc) y el valor de la variable global
# $path, e imprime un mensaje utilizando el segundo parámetro como etiqueta.
#
# Por ejemplo:
#   chequear -f "Es un archivo"
#   # => Imprime "✓ Es un archivo" si $path es un archivo, o " Es un archivo"
#        si no lo es.
function chequear {
  if [ $1 $path ]; then
    echo -n "  ✓"
  else
    echo -n "   "
  fi
  echo " $2"
}

echo "Analizando $1..."

chequear -e Existe
chequear -d Directorio
chequear -f Archivo
chequear -L Link
chequear -r Lectura
chequear -w Escritura
chequear -x Ejecución