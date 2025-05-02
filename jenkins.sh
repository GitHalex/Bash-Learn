#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Este script debe ser ejecutado como root"
  exit 1 
else
#omite esto
  echo "Pueden continuar con la instalacion"
fi

echo "# $(date) Se inicia la instalacion"