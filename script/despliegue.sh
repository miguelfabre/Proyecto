#!/bin/bash

#Actualizamos todos los repositorios 
apt-get update
#Iniciamos el despliegue
./creacion_jaula.sh
#Ejecutamos la segunda parte del despliegue dentro de la jaula
chroot /home/jaulas/saucy32/ ./instalacion_herramientas.sh
