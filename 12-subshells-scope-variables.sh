#!/bin/bash

# Este ejemplo muestra el comportamiento del alcance de las variables con subshells de por medio.

i=0
function f1()
{
    let i++
    echo "In f1, SUBSHELL: $BASH_SUBSHELL, i=$i" >&2
}

f1
f1 | f1 | f1

echo "at the end, i=$i"
