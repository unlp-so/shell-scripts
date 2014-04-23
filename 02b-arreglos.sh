#!/bin/bash

# Un tipo especial de variables es el arreglo (o lista, o array). Un arreglo
# contiene una lista de valores que son básicamente strings separados por
# espacios. En bash, tanto para una lista de valores como para un arreglo o los
# parámetros de un script, el separador de elementos son los caracteres en
# blanco (espacios).
#
# Los arreglos utilizan los paréntesis ("()") para delimitarse:

arreglo_vacio=()
arreglo_con_elementos=(1 2 "otro elemento" mas elementos)

# Para acceder a los elementos del arreglo utilizaremos índices numéricos,
# comenzando en 0, con la siguiente sintáxis:

echo "Primer elemento de arreglo_con_elementos => ${arreglo_con_elementos[0]}"
echo "Tercer elemento de arreglo_con_elementos => ${arreglo_con_elementos[2]}"

# Todos los elementos del arreglo, en lista, se pueden acceder mediante
# cualquiera de las siguientes opciones (son equivalentes):

echo "Todos los elementos con * => ${arreglo_con_elementos[*]}"
echo "Todos los elementos con @ => ${arreglo_con_elementos[@]}"

# y la cantidad de elementos del arreglo se acceden agregando un numeral ("#")
# antes del nombre de variable del arreglo:

echo "La cantidad de elementos en arreglo_con_elementos es ${#arreglo_con_elementos[*]}"
echo "La cantidad de elementos en arreglo_vacio es ${#arreglo_vacio[*]}"

# Similarmente a cómo se accede a los valores de los elementos, se les pueden
# asignar nuevos valores o sobreescribir los existentes (recordar que en bash
# el $ hace referencia al valor de la variable, por lo que no lo utilizaremos
# para asignar sobre la variable):

arreglo_vacio[0]=9
echo "arreglo_vacio => ${arreglo_vacio[*]}"

# [TIP] Una forma sencilla de agregar elementos al final del arreglo:

arreglo_vacio=(${arreglo_vacio[*]} "nueve")
echo "arreglo_vacio => ${arreglo_vacio[*]}"

# Para borrar elementos de un arreglo, usamos el comando `unset` y hacemos
# referencia a la posición del arreglo, pero no a su valor:

unset arreglo_vacio[0]
echo "arreglo_vacio => ${arreglo_vacio[*]}"

# Notar que no se realizan corrimientos, si intento borrar nuevamente el primer
# elemento no voy a estar modificando el arreglo porque el elemento en la
# posición 0 ya fue borrado):

unset arreglo_vacio[0]
echo "arreglo_vacio => ${arreglo_vacio[*]}"
