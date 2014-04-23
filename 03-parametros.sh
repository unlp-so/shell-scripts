#!/bin/bash

# Los scripts pueden recibir parámetros al momento de ejecutarlos. Para acceder
# a estos parámetros, existe un conjunto de variables especiales:
#   - $0 es el nombre del script tal como se lo invocó
#   - $1 a $9 son los parámetros en el orden que se los recibió, del primero al
#     noveno
#   - $* son todos los parámetros que recibió el script

echo "Este script fue invocado como: $0"
echo "El primer parámetro recibido fue: $1"
echo "El segundo parámetro recibido fue: $2"
echo "El tercer parámetro recibido fue: $3"
echo "El cuarto parámetro recibido fue: $4"
echo "El quinto parámetro recibido fue: $5"
echo "El sexto parámetro recibido fue: $6"
echo "El séptimo parámetro recibido fue: $7"
echo "El octavo parámetro recibido fue: $8"
echo "El noveno parámetro recibido fue: $9"
echo "Todos los parámetros recibidos fueron: $*"

# Podemos probar ejecutar este mismo script pasando distintos parámetros y ver
# qué pasa. Por ejemplo:
#
# ./03-parametros.sh parametro 1 parametro 2
# ./03-parametros.sh "parametro 1" "parametro 2"
# ./03-parametros.sh uno dos tres cuatro cinco 6 siete ocho nueve 10 11 12 13
