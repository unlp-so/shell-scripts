#!/bin/bash

# Con "continue" o "continue 1" se esta diciendo que salte una iteración
# del bucle en donde se lo invoca.

# En este ejemplo se va a imprimir del 1 al 10, excepto el 2, del bucle I
# por cada iteración del bucle de Z.

for z in `seq 1 10`; do

	echo $z

	for i in `seq 1 10`; do 

		if [ $i -eq 2 ]; then 
			continue
		fi

		echo $i
	done;
done;
