#!/bin/bash
# practice of functions.
#types of commands in linux are :
#1, binarys like ls pwd df
#2, shell builtin commands
#3, alias - which is to create or customize the command it self. (ex; alias gp='git pull')
#4, Functions
STAT_CHUCK() {
  if [ $1 -ne 0 ] ; then
    echo -e "\e[1;31m This is not installed correctly check once again\e[0m"
    else
      echo -e "\e[5;32mThis is installed correctly\e[0m"
      exit
 fi
             }
yum install nginx -y &>> /tmp/log.txt
STAT_CHUCK $?

