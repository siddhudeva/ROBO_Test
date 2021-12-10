#!/bin/bash

# practice of place
#  validating root user or not

user=(id -u)
if [ "$?" -ne 0 ] ; then
  echo -e "\e[1;31m you are not a Root user make sure you have a valid permissions\e[0m"
  exit
fi
#validating for component mentioned or not

COMPONENT=$1
if [ -z "$COMPONENT" ] ; then
  echo -e "e[1;31m Please specify the Component name\e[0m"]
  exit
fi
# validating weather the mentioned name is valid or not
if [ ! -e components/${COMPONENT}.sh ] ; then
  echo -e "\e[1;31m this file doesn't exists.please check once\e[0m"
  exit
fi
