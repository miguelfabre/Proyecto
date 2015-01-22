#!/bin/bash

#Actualizamos todos los repositorios 
apt-get update
#Iniciamos el despliegue
./creacion_jaula.sh
chroot /home/jaulas/saucy32/ ./instalacion_herramientas.sh
