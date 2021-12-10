#!/bin/bash
# practice of functions.
#types of commands in linux are :
#1, binarys like ls pwd df
#2, shell builtin commands
#3, alias - which is to create or customize the command it self. (ex; alias gp='git pull')
#4, Functions

function1 () {
echo value of b is ${b}
  echo the value of a=${a}
}
a=100
b=200