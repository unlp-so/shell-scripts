#!/bin/bash

if [ $# -ne 1 ]; then
  echo Debe pasar el nombre del usuario que desea chequear como parámetro
  exit 1
fi

usuario_valido=`cat /etc/passwd | cut -d: -f1 | grep -w $1 | wc -l`
if [ $usuario_valido -eq 0 ]; then
  echo "usuario invalido"
  exit 82
fi

while true; do
  entro=`who | cut -d' ' -f 1 | grep $1 | wc -l`
  if [ $entro -gt 0 ]; then
    echo "El usuario $1 ha ingresado"
    exit 0 # o break
  fi
  sleep 10
done
