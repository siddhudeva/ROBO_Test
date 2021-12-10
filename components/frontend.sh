#!/bin/bash
# practice of place
#  validating root user or not

User=(id -u)
if [ "$User" -ne 0 ] ; then
  echo -e "\e[1;31m you are not a Root usr make sure you have a valid permissions\e[0m"
  exit
fi
#validating for component mentioned or not

COMPONENT=$1
if [ -z "$COMPONENT" ] ; then
  echo -e "e[1;31m Please specify the COMPONENT name\e[0m"]
  exit
fi
# validating wether the mentioned name is valid or not
if [ ! -e component/${COMPONENT}.sh ] ; then
  echo -e "\e[1;31m this file doesn't exists.please check once\e[0m"
  exit
fi
#function is set up for validation of each command

Chec() {
  if [ "$1" -ne 0 ] ; then
    echo -e "\e[1;31m This task is not done.error is there\e[0m"
 else
   echo -e "\e[1;32m This task is done\e[0m"
   exit
fi
}

 yum install nginx -y &>> /tmp/null
Chec $?

#enable the opeation
systmctl enable nginx
