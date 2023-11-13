#! /bin/bash
echo "Ingrese 1 o 2, para  poner la variable de entorno a Yes o No"
read ans

# Configure un codigo de retorno
RC=0

if [ $ans -eq 1 ]
then
export EVAR="Yes"
else
if [ $ans -eq 2 ]
then
export EVAR="No"
else
# Solo puedo llegar aqui con una mala respuesta
export EVAR="Unknown"
RC=1
fi
fi
echo "The value of EVAR is(El valor de EVAR es): $EVAR"
exit $RC
