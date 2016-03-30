#!/bin/bash

# Este ejemplo imprime los valores de las varialbes $$, $PPID, $BASHPID y $BASH_SUBSHELL
# para cada una de las instancias shell, es decir una por la shell principal y una por cada
# shell que generan los pipes.
# Los dos primeros 'echo' imprimiran el mismo valor para $BASH_SUBSHELL debido a que la shell expande el valor de las
# variables correspondiente al primer termino del pipe antes de finalizar el spawn de la subshell. Es decir, la shell
# hace el fork, obtiene el PID de la subshell (por eso si imprime tal valor en $BASHPID y no el de la shell) y luego hace el execv.

# La subshell más interna ejecuta un 'pstree' para ver la jerarquía de procesos en ese momento. Los 'echo' antecesores
# no se ven porque una vez que imprimieron el valor terminan.

echo "Shell ---- BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID"

echo "Subshell 1 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" | \
( read v; echo $v; echo "Pirimer anidamiento $BASH_SUBSHELL - $BASHPID"; echo "Subshell 2 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" | \
( read v; echo $v; echo "Segundo anidamiento $BASH_SUBSHELL - $BASHPID"; echo "Subshell 3 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" | \
( read v; echo $v; echo "Tercer anidamiento $BASH_SUBSHELL - $BASHPID"; echo "Subshell 4 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID"; pstree ) ) )


echo -e "\n\n"

# En este caso de prueba se puede apreciar mejor el comportamiento de las variables en cuestion una vez realizado el spawn de la subshell
imp() {
	echo "$1 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" >&2 #Se redirige al stderr para visualizar en pantalla
}

imp "Shell ----"
imp "Subshell 1" | ( imp "Subshell 2" | ( imp "Subshell 3" | imp "Subshell 4" ) )
