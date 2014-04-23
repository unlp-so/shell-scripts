#!/bin/bash

# Los bucles for en bash iteran sobre listas de valores, como siempre, separadas
# por espacios:

for valor in uno dos 3 cuatro cinco seis
do
  echo $valor
done

# Como los arreglos son listas, podemos iterar sobre ellos:

arreglo=(uno tres 4 seis seventeen las canchas de paddle)
for valor in ${arreglo[*]}
do
  echo $valor
done
