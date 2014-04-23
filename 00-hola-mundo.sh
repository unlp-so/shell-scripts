#!/bin/bash

# Esta, y todas las líneas que comienzan con "#" son comentarios, y no
# serán interpretados al ejecutar el script.
#
# Si la primera linea del script comienza con "#!", se considera el path
# al intérprete a utilizar y se la llama "shebang".
#
# Otros ejemplos de shebangs pueden ser:
#
# #|/bin/zsh
# #!/bin/php
# #!/usr/bin/env ruby
# #!/usr/bin/env python
# #!/usr/bin/awk
#
# Es una buena práctica agregar un breve comentario que documente qué hacen
# los scripts que escribimos, para que nuestro "futuro yo" no quiera volver
# en el tiempo a golpearnos la cabeza contra el teclado por no entender qué
# quisimos hacer en el script de 625 lineas que dejó de funcionar...

echo "¡Hola mundo!"

# Todo script termina con un estado o "exit status" particular: un valor
# numérico entre 0 y 255, especificado mediante el comando `exit`, con
# la siguiente convención:
#   - si el valor el 0, se considera exitoso el resultado del script
#   - si el valor es mayor que 0, se considera que ocurrió algo fuera de lo
#     deseado. ¿Qué indica cada valor (entre 1 y 255)? Eso lo define cada
#     script
#
# Si el script termina sin invocar el comando `exit`, se retorna un valor
# por defecto. ¿Cuál? Ejecutar este script y luego chequear su exit status
# con la variable especial $?
#
# De hecho, ya que todo comando o script en bash retorna un exit status,
# podemos ver cuál es el que retornó el comando `echo` anterior:

echo "El exit status fue $?"

# Los comandos en un script se suelen separar con saltos de línea ("\n"), lo
# cual marca el fin de un comando y el comienzo de otro; no obstante esto,
# podemos utilizar el caracter punto y coma (";") como delimitador de líneas.
# Por ejemplo, en lugar de escribir las siguientes tres líneas:

echo Uno
echo Dos
echo Tres

# podríamos escribirlas de la siguiente forma:

echo Uno; echo Dos; echo Tres
