#!/bin/bash

# Como en otros lenguajes de programación, bash dispone de estructuras de
# control que permiten tomar decisiones condicionales, realizar operaciones
# repetitivas, etc.
#
# Antes de introducir las estructuras de control, es necesario comprender
# cómo funcionan los valores booleanos (verdadero o falso) en bash: el cero es
# considerado verdadero, mientras que cualquier otro valor es considerado falso.
# ¿Se ve la relación con el exit status de los scripts?
#
# Existen dos comandos que simbolizan el verdadero y falso: `true` y `false`
# respectivamente. ¿Cómo funcionan? Utilizan su exit status para representar
# la veracidad o falsedad de su valor:

true
echo "El comando true retornó el exit status => $?"

false
echo "El comando false retornó el exit status => $?"

# Existe un comando en bash que permite evaluar condiciones lógicas: el comando
# `test`. Este comando recibe diferentes parámetros que representan una
# expresión lógica, la evalúa y retorna un valor booleano. Un alias para el
# test son los corchetes ([ ]) -- tener en cuenta que siempre llevan espacios
# alrededor! Para conocer en detalle las posibilidades que brinda este comando,
# se puede ver su documentación mediante el siguiente comando:

info test
