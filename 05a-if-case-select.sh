#!/bin/bash

# La estructura de control básica es el IF. En bash, un if tiene mínimamente la
# siguiente forma:

if [ 1 = 1 ]
then
  # Cuerpo para la rama if
  echo "1 es igual a 1"
fi

# Agregando un único caso alternativo, la estructura es la siguiente:

if [ 1 = 1 ]
then
  # Cuerpo para la rama if
  echo "1 es igual a 1"
else
  # Cuerpo para la rama else
  echo "WAT?"
fi

# Y agregando más alernativas:

if [ 1 = 1 ]; then
  # Cuerpo para la rama if
  echo "1 es igual a 1"
elif [ 2 -gt 1 ]; then
  # Cuerpo para esta rama elif
  echo "2 es mayor que 1"
elif [ true ]; then
  # Cuerpo para esta rama elif
  echo "true es siempre verdadero!"
else
  # Cuerpo para la rama else
  echo "WAT?"
fi

# La selección es con el comando `case`. Notar que cada caso es delimitado por
# dos puntos y coma (";;"), y que el último caso presentado funciona como
# un comodín (o "wildcard"), es ecir, cualquier opción coincidirá.

sabor=pistacho
echo "¿Qué opinás del helado sabor $sabor?"
case $sabor in
  chocolate)
    echo "rico!"
    ;;
  vainilla)
    echo "pasable"
    ;;
  "dulce de leche")
    echo "lo más"
    echo "en serio. ¿Y lo probaste granizado?"
    ;;
  *)
    echo "puajjj"
    ;;
esac

# El orden de chequeo de coincidencia para los distintos casos es descendente
# según cómo los declaramos. ¿Qué pasaría si cambiamos el ejemplo anterior por
# el siguiente?

sabor=chocolate
echo "- ¿Qué opinás del helado sabor $sabor?"
case $sabor in
  *)
    echo "- puajjj"
    ;;
  chocolate)
    echo "- rico!"
    ;;
  vainilla)
    echo "- pasable"
    ;;
  "dulce de leche")
    echo "- lo más"
    echo "  en serio. ¿Y lo probaste granizado?"
    ;;
esac

# Otra forma más interactiva del ejemplo anterior puede ser pedir al usuario
# que ingrese por teclado el sabor. Para esto utilizamos el comando `read`:

echo "Ingresá un sabor de helado: "
read sabor
echo "- ¿Qué opinás del helado sabor $sabor?"
case $sabor in
  chocolate)
    echo "- rico!"
    ;;
  vainilla)
    echo "- pasable"
    ;;
  "dulce de leche")
    echo "- lo más."
    echo "  en serio. ¿Y lo probaste granizado?"
    ;;
  *)
    echo "- puajjj"
    ;;
esac


# El comando select presenta al usuario un conjunto de opciones una para que elija
# una y nos devuelve en una variable la opción elegida:

echo "¿Querés saber qué opino de los sabores de helado? Elegí algunos"
select sabor in chocolate vainilla "dulce de leche" pistacho salir
do
  case $sabor in
    chocolate)
      echo "rico!"
      ;;
    vainilla)
      echo "pasable"
      ;;
    "dulce de leche")
      echo "lo más"
      ;;
    pistacho)
      echo "puajjj"
      ;;
    salir)
      echo "Me alegro haber podido aclararte esas dudas tan existenciales :)"
      break
      ;;
  esac
done

# Notar en el caso anterior que se incluyó un caso para salir del bucle que
# realiza el `select`, de lo contrario éste se repetirá indefinidamente.
#
# Para cortar la ejecución de un bucle o loop, se utiliza el comando `break`,
# y para saltear la iteración actual de cualquier bucle se utiliza el comando
# `continue`. Pero esto lo veremos más adelante con ejemplos concretos.
