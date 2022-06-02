#!/bin/bash

# Script para trabajar Variables. Se debe ejecutar ./elmejordia.sh Pedro barba

name=$1
elogio=$2

user=$(whoami)
fecha=$(date)
donde=$(pwd)

echo "Buenos días $name!"
sleep 2
echo "Te ves muy bien hoy $name!!"
sleep 2
echo "Realmente tenés la mejor $elogio del curso $name!"
sleep 2

echo "Actualmente estàs logeado como $user y estàs en el directorio $donde. Ademàs hoy es: $fecha"

