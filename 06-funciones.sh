#!/bin/bash

# Las funciones en bash son como comandos nuevos, y al igual que los scripts
# reciben parámetros por posición (se los accede mediante las variables $1, $2,
# ..., $9, $* y $#).
#
# Hay dos formas de declarar las funciones:

function imprimir {
  echo "Imprimiendo desde la función imprimir:"
  echo $*
}

borrar() {
  echo "Presioná ENTER para borrar la pantalla"
  read
  clear
}

# Las funciones pasan a ser igual que nuevos comandos, por lo que las podemos
# utilizar tal como usamos los comandos propios de bash:

imprimir uno dos tres
borrar
