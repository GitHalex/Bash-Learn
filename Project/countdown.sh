#!/bin/bash

# Program that counts down to zero from a given argument

# if [[ $1 == arg1 ]]
# then 
#    echo true
# else
#    echo false
# fi

if [[ $1  -gt 0  ]]
then
   for (( i = $1; i > 0; i--))
   do
      echo $i
   done
else
   echo Include a positive integer as the first argument.
fi