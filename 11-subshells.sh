#!/bin/bash

# Este ejemplo imprime los valores de las varialbes $$, $PPID, $BASHPID y $BASH_SUBSHELL
# para cada una de las instancias shell, es decir una por la shell principal y una por cada
# shell que generan los pipes.
# Los dos primeros 'echo' imprimiran el mismo valor para $BASH_SUBSHELL debido a que la primer subshell
# correspondiente al primer pipe resuelve los valores de las variables antes de realizar el spawn del subproceso.

echo "Shell ---- BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID"
echo "Subshell 1 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" | ( read v; echo $v; echo "Subshell 2 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" | ( read v; echo $v; echo "Subshell 3 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" | ( read v; echo $v; echo "Subshell 4 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" ) ) )

echo -e "\n\n\n\n"

# En este ejemplo se puede apreciar y dejar desambiguar el conflicto anterior
echo "En este ejemplo se puede apreciar y dejar desambiguar el conflicto anterior"
imp() {
	echo "$1 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" >&2 #Se redirige al stderr para visualizar en pantalla
}

imp "Shell ----"
imp "Subshell 1" | ( imp "Subshell 2" | ( imp "Subshell 3" | imp "Subshell 4" ) )
