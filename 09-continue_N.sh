#!/bin/bash

# Con "continue N" se esta indicando que continue ejecutando en la siguiente
# iteración subiendo N niveles contando desde el bucle donde se lo invoca.

# En este ejemplo por cada iteración del bucle Z se va a imprimir SOLO el
# el número 1  del bucle I.

# En este ejemplo se podría reemplazar "continue 2" por "break"
# y el comportamiento seguiría siendo el mismo.

for z in `seq 1 10`; do

	echo $z

	for i in `seq 1 10`; do 

		if [ $i -eq 2 ]; then 
			continue 2
		fi

		echo $i
	done;
done;
