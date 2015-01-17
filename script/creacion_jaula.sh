#!/bin/bash

# Instalación de debootstrap
apt-get install debootstrap
# Creación de una nueva distro
debootstrap --arch=i386 saucy /home/jaulas/saucy32/ http://archive.ubuntu.com/ubuntu
# Copiamos dentro de la jaula el segundo script que tendremos que ejecutar para facilitar el proceso
cp instalacion_herramientas.sh /home/jaulas/saucy32/



