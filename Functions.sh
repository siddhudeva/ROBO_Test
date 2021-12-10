#!/bin/bash
# practice of functions.
#types of commands in linux are :
#1, binarys like ls pwd df
#2, shell builtin commands
#3, alias - which is to create or customize the command it self. (ex; alias gp='git pull')
#4, Functions
sample() {
  echo First argument = $1
  echo the totel number of Arguments = ${#}
  echo a in function = ${a}
b=200
}
a=600
sample 123 456 567
echo value of b =${b}