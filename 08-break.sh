#!/bin/bash

# Con "break" o "break 1" se esta diciendo que corte el bucle
# donde se lo invoca.

# En este ejemplo se va a imprimir SOLO el 1 del bucle I
# por cada iteración del bucle de Z.

# En este ejemplo se podría reemplazar "break" por "continue 2"
# y el comportamiento seguiría siendo el mismo.

for z in `seq 1 10`; do

	echo $z

	for i in `seq 1 10`; do 

		if [ $i -eq 2 ]; then 
			break
		fi

		echo $i
	done;
done;
