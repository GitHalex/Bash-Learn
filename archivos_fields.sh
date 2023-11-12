#! /bin/bash

# Solicita al usuario un nombre de directorio y luego lo crea  con mkdir
echo "Give a directory name to create"
read New_DIR

# Guarda el directorio original para que podamos volver a el (tambien podrias usar push, popd)
ORIG_DIR = $(pwd)

#Verifica para asegurarte de que no existe
[[  -d $New_DIR ]] && echo $New_DIR already exists, aborting && existe
mkdir $New_DIR

# Cambia al nuevo directorio e imprime donde esta usando pwd
cd $New_DIR
pwd

# Usando touch, crear varios archivos vacios y ejecuta ls en ellos par a verficar que esten vacios
for n in 1 2 3 4
do 
touch file$n
done 

ls file?

#(Podira haber hecho touch file1 file2 file3 file4, solo quiero mostrarhacer bucle)
# Pone algo de contenido en ellos usando echo y redireccion

for names in file?
do 
echo This file is named $names > $names
done 

# Muestra su contenido usando Cat
cat file?

#  Se despide del usuario y limpia despues de si misma.
cd $ORIG_DIR
rm -rf $New_DIR
echo "Goodbye My Friend!!!"