#!/bin/bash

# Bash no tiene tipado fuerte, por lo que sus variables pueden tomar valores
# de distintos tipos (cadenas de texto, numéricos, arreglos) sin necesidad
# de hacer declaraciones.
#
# Los nombres de variable pueden contener caracteres alfanuméricos y guiones
# bajos ("_"), pero no pueden comenzar con números. Bash es en esencia case
# sensitive, por lo que "A" y "a" son distintas variables.
#
# Las variables se asignan con "=" sin espacios entre el nombre de la variable
# y su valor:

MI_VARIABLE="tiene un valor"
la_2da_variable="tiene otro valor"
mi_variable="es distinta a MI_VARIABLE"
numerica=8
numerica="me arrepenti, ahora es un string"
arreglo=(1 2 3 4)

# Los valores de las variables se acceden agregando un "$" al comienzo del
# nombre de la variable:

echo $MI_VARIABLE

# Y los valores se pueden interpolar (incluir en medio de un string) siempre
# que usemos comillas dobles ("):

echo "MI_VARIABLE => $MI_VARIABLE"
echo "la_2da_variable => $la_2da_variable"
echo "mi_variable => $mi_variable"
echo "numerica => $numerica"

# Con comillas simples no se realiza interpolación alguna:

echo 'MI_VARIABLE => $MI_VARIABLE'

# Los valores de la variable se pueden acceder, opcionalmente, delimitando con
# llaves ("{}") el nombre de la variable:

echo ${MI_VARIABLE}
