#! /bin/bash

# Funciones (Deben definirse antes de su uso)
func1(){
   echo " Este mensaje es de la funcion 1"
}

func2() {
   echo " Este mensaje es de la funcion 2"
}

func3(){
   echo " Este mensaje es de la funcion 3"
}

# Comienzo del guion principal

# Pedirle al usuario que haga su eleccion
echo "Ingrese un numero del 1 al 3"
read n

# Llamar a la funcione elegida
func$n 