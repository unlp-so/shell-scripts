#!/bin/bash

# La salida de cualquier comando puede redirigirse a un archivo, haciendo
# posible - por ejemplo - generar fácilmente archivos mientras procesamos datos,
# o a otro comando.
#
# Las redirecciones a archivo pueden ser de dos tipos: destructivas y no
# destructivas. Las primeras "pisan" el contenido del archivo con la salida
# que está siendo redirigida; mientras que las no destructivas agregan al final
# del archivo destino, manteniendo el contenido existente.

# Redirección destructiva: ">"
echo "Hola!" > /tmp/miarchivo
# Redirección no destructiva: ">>"
echo "¿Cómo va?" >> /tmp/miarchivo

less /tmp/miarchivo

echo "Ahora pisé todo" > /tmp/miarchivo

less /tmp/miarchivo

# Las redirecciones a otro comando se realizan mediante el uso de pipes ("|").
# La salida estándar (stdout) de un comando es pasada a otro, el cual la recibe
# en su entrada estándar (stdin):

ls | grep redirec

# Todo script tiene 3 file descriptors (archivos abiertos) por defecto:
#   - 0 => la entrada estándar (stdin)
#   - 1 => la salida estándar (stdout)
#   - 2 => la salida de error (stderr)
#
# Podemos utilizar estos file descriptors para redirigir, por ejemplo, la salida
# de error a un archivo para poder ver qué ocurrió:

find /dev -name stdin 2> /tmp/errores.log
less /tmp/errores.log

# Y podemos combinar lo anterior:

ls | grep redirec > /tmp/salida.txt
less /tmp/salida.txt
