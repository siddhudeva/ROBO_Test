#!/bin/bash
# practice of functions.
#types of commands in linux are :
#1, binarys like ls pwd df
#2, shell builtin commands
#3, alias - which is to create or customize the command it self. (ex; alias gp='git pull')
#4, Functions
Chck() {
    echo first argument =${1}
    echo total number of arguments are =${#}
    echo value of a is =${a}
    b=400
  }
    Chck 340 400 450
    a=600
    echo value of b is =${b}