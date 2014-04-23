#!/bin/bash

# La salida de los comandos y funciones puede tomarse para almacenarla en
# variables o para ser interpolada en parte de un string. Para esto existen
# dos formas: una mediante el uso del acento francés o grave ("`"), y otra
# mediante el uso de "$(comando)".
#
# La regla básica es que la salida estándar del comando reemplazará exactamente
# la invocación del mismo:

archivos=`ls`
directorios=$(find . -type d -maxdepth 0)

echo "Archivos => $archivos"
echo "Directorios => $directorios"

echo "Mi nombre de usuario es `whoami`"

for archivo in `ls | grep sustit`; do
  echo "Se encontró que el archivo $archivo coincide con la búsqueda"
done
