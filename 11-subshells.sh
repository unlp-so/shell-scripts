#!/bin/bash

# Este ejemplo utiliza las subshells de Bash para demostrar su anidamiento.

echo "Subshell 1 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" | ( read v; echo $v; echo "Subshell 2 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" | ( read v; echo $v; echo "Subshell 3 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" | ( read v; echo $v; echo "Subshell 4 BASH_SUBSHELL=$BASH_SUBSHELL BASHPID=$BASHPID PID=$$ PPID=$PPID" ) ) )
