#!/bin/bash
# practice of place
#  validating root user or not


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
