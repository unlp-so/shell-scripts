#!/bin/bash

# Las variables en bash tienen por defecto alcance global: una variable
# definida en una parte del script se podrá acceder desde cualquier otra
# parte del mismo (luego de que se haya ejecutado la porción de código que
# la define). Esto es siempre así, excepto para las variables que se declaran
# con el comando `local`, cuyo alcance será dentro de la función que las
# declara y sus funciones anidadas.

# Veamos primero un ejemplo del alcance global

echo "== Globales"
echo

function pisa_variable_global {
  variable_global='Local'
}

variable_global='Global'

echo "Antes de llamar a pisa_variable_global => $variable_global"
pisa_variable_global
echo "Después de llamar a pisa_variable_global => $variable_global"

function define_variable_global2 {
  variable_global2="tiene su valor"
}

echo "Antes de llamar a define_variable_global2 => $variable_global2"
define_variable_global2
echo "Después de llamar a define_variable_global2 => $variable_global2"

# Ahora un ejemplo similar, pero utilizando variables locales:

echo
echo "== Locales"
echo

function tiene_local {
  local mi_variable="tiene valor"

  function hija_de_tiene_local {
    echo "Adentro de hija_de_tiene_local => $mi_variable"
    mi_variable="le cambio el valor"
    echo "Adentro de hija_de_tiene_local (luego de cambiar el valor) => $mi_variable"
  }

  echo "Adentro de tiene_local => $mi_variable"
  hija_de_tiene_local
  echo "Adentro de tiene_local (luego de cambiar el valor) => $mi_variable"
}

tiene_local
echo "Afuera de tiene_local => $mi_variable"
