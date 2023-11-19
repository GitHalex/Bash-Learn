#! /bin/bash

# Acepta un número entre 1 y 12 como un argumento a este fichero, luego muestra en pantalla
# el nombre del mes al cual corresponde ese número

# Revisa por si el usuario ha pasado un parametro
if [ $#  -eq 0 ]
then 
echo "Error. Se debe dar como un argumento un numero entre el 1 y el 12."
exit 1
fi 

# configura el mes que sea igual a un argumento pasado para uso en este fichero month=$1
month=$1

# Un ejemplo de la declaracion case:

case $month in
   1) echo "Enero"  ;;
   2) echo "Febrero" ;;
   3) echo "Marzo" ;;
   4) echo "Abril" ;;
   5) echo "Mayo" ;;
   6) echo "Junio" ;;
   7) echo "Julio" ;;
   8) echo "Agosto" ;;
   9) echo "Septiembre" ;;
   10) echo "Octubre" ;;
   11) echo "Noviembre" ;;
   12) echo "Diciembre" ;;
   *)
   echo "Error, Ningun mes corresponde con $month"
   echo "Por fis dar un numero entre 1 y es 12"
   exit 2 ;;
   esac 
exit 0