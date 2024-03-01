#!/bin/bash
echo "Enter a username to check: "
read NAME
if grep $NAME /etc/passwd > /dev/null 
then
  echo "$NAME is on this system"
else
  echo "$NAME does not exist"
fi