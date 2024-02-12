#!/bin/bash
    
    # Revisa que dos argumentos de cadena se han dado
    [[ $# -lt 2 ]] && \
     echo "Uso: Procede con dos cadenas como argumentos" && exit 1
    
    str1=$1
    str2=$2
    
    #------------------------------------
    # comando de prueba
    
    echo "¿La cadena 1 contiene 0 en longitud? Valor del 1 significa FALSO"
    [ -z "$str1" ]
    echo $?
    # si $str1 esta vacío, la prueba [ -z $str1 ] fallaría
    # pero [[ -z $str1 ]] funciona
    # por ejemplo, con [[ ]] funciona sin las comillas
    
    echo "¿La cadena 2 contiene un valor distinto de 0 en longitud? Valor del 0 significa VERDADERO;"
    [ -n $str2 ]
    echo $?
    
    ## comparando las longitudes de dos cadenas
    
    len1=${#str1}
    len2=${#str2}
    echo longitud de Cadena 1 = $len1, Longitud de Cadena 2 = $len2
    
    if [ $len1 -gt $len2 ]
    then
     echo "Cadena 1 es mas larga que Cadena 2"
    else
     if [ $len2 -gt $len1 ]
     then
     echo "Cadena 2 es mas larga que Cadena 1"
     else
     echo "Cadena 1 es de la misma longitud que Cadena 2"
     fi
    fi
    
    ## compara las dos cadenas a ver si son iguales
    if [[ $str1 == $str2 ]]
    then
     echo "Cadena 1 es igual a Cadena 2"
    else
     if [[ $str1 != $str2 ]]
     then
     echo "Cadena 1 no es igual a Cadena 2"
     fi
    fi