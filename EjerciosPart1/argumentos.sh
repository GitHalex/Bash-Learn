#! /bin/bash

# Comprobar si hay un argumento, imprimir un mensaje de uso si no se proporciona

if [ $#  -eq 0 ]  ;  then
   echo "Usage: $0 argument"
   exit 1
fi 
echo $1
exit 0