#! /bin/bash
#
#comprueba so hay un archivo inexistente, el estado de salida sera 2
#
ls SoMeFile.ext
echo "status: $?"

# crear una archivo y hazlo de nuevo, el estado de salida sera 0
touch SoMeFile.ext
ls SoMeFile.ext
echo "status: $?"

echo "ahora lo vamos a eliminar"
rm SoMeFile.ext
