#!/bin/bash

# Con "break N" se esta diciendo que corte N niveles de bucles comenzando
# a contar desde el bucle en donde se lo invoca.

# En este ejemplo se va a imprimir el 1 del bucle I
# y el 1 del bucle de Z.

for z in `seq 1 10`; do

	echo $z

	for i in `seq 1 10`; do 

		if [ $i -eq 2 ]; then 
			break 2
		fi

		echo $i
	done;
done;
