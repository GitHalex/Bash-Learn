#!/bin/bash
# Program that counts down to zero from a given argument
:   '
if [[ $1 == arg1 ]]
then 
   echo true
else
   echo false
fi
'

echo -e "\n~~ Countdown Timer ~~\n"

if [[ $1  -gt 0  ]]
then
   : 'for (( i = $1; i >= 0; i--))
   do
      sleep 3
      echo $i
   done
   '
   I=$1
   while [[ $I -ge 0 ]]
   do
      echo $I
      (( I-- ))
      sleep 1
   done
else
   echo Include a positive integer as the first argument.
fi