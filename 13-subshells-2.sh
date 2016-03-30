#!/bin/bash

# Este ejemplo muestra claramente el momento de resolucion de las variables en cuestion, teniendo en cuenta los momentos fork y execv.
# La variable BASH_SUBSHELL es incrementada una vez finalizado el spawn.

fn() {
	echo -e "Recibe BASHPID resuelto por la shell antes de finalizar el spawn de la subshell_$1 $2 (fork) \n" >&2
	echo -e "Resuelve BASHPID en la subshell_1 $BASHPID \n" >&2
}

fn2() {

	echo -e "Recibe BASH_SUBSHELL resuelto por la shell antes de finalizar el spawn de la subshell_$1 $2 (fork) \n" >&2
	echo -e "Resuelve BASH_SUBSHELL en la subshell_$1 $BASH_SUBSHELL \n" >&2
}


echo -e "BASHPID desde la shell $BASHPID y BASH_SUBSHELL desde la shell $BASH_SUBSHELL \n"
fn "1" "$BASHPID" | fn "2" "$BASHPID"

fn2 "1" "$BASH_SUBSHELL" | fn2 "2" "$BASH_SUBSHELL"

