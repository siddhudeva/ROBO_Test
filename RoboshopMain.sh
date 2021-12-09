#!/bin/bash

# This is a Practice file of Validation purpose.
#varification of Root user or not
Root=$(id -u)
if [ "$Root" -ne 0 ] ; then
  echo -e "\e[1;31m Please make sure You are a root user\e[0m"
  fi
exit

# Validation of entering a COMPONENT name
COMPONENT=${1}
if [ -z $COMPONENT  ] ; then
  echo -e "\e[1;31m please enter a COMPONENT name\e[0m"
fi
exit

#finally Validation for giving a Correct name

if [ ! -e components/${COMPONENT}.sh] ; then
  echo -e "\e[1;31m This file is not available please ensure\e[0m"
fi
bash roboshop.sh ${COMPONENT}.sh
