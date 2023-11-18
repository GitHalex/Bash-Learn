#!/bin/bash
    
# Funciones. Debe estar antes de la parte principal del guión
# en cada caso metodo 1 usa $((..))
# metodo 2 usa let
 # metodo 3 usa expr
add() {
    answer1=$(($1 + $2))
    let answer2=($1 + $2)
    answer3=`expr $1 + $2`
}
 sub() {
    answer1=$(($1 - $2))
    let answer2=($1 - $2)
    answer3=`expr $1 - $2`
}
mult() {
    answer1=$(($1 * $2))
    let answer2=($1 * $2)
    answer3=`expr $1 \* $2`
}
div() {
    answer1=$(($1 / $2))
    let answer2=($1 / $2)
    answer3=`expr $1 / $2`   
}
    # Fin de las funciones
    #
    
    # Parte principal del guión
    
    # necesita 3 argumentos, y analizar para asegurarse de que sean de tipos válidos
    
op=$1 ; arg1=$2 ; arg2=$3
    
[[ $# -lt 3 ]] && \
    echo "Usage: Provide an operation (a,s,m,d) and two numbers" && exit 1
    
[[ $op != a ]] && [[ $op != s ]] && [[ $op != d ]] && [[ $op != m ]] && \
    echo operator must be a, s, m, or d, not $op as supplied
    
    # ok, haz el trabajo
    
if [[ $op == a ]] ; then add $arg1 $arg2
elif [[ $op == s ]] ; then sub $arg1 $arg2
elif [[ $op == m ]] ; then mult $arg1 $arg2
elif [[ $op == d ]] ; then div $arg1 $arg2
else
    echo $op is not a, s, m, or d, aborting ; exit 2 
fi
    
    # Muestra las respuestas
    echo $arg1 $op $arg2 :
    echo 'metodo 1, $((..)),' La respuesta es $answer1
    echo 'metodo 2, let, ' La respuesta es $answer2
    echo 'metodo 3, expr, ' La respuesta es $answer3