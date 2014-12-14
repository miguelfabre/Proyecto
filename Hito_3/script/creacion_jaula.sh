#!/bin/bash

apt-get install debootstrap
debootstrap --arch=i386 saucy /home/jaulas/saucy32/ http://archive.ubuntu.com/ubuntu
cp instalacion_herramientas.sh /home/jaulas/saucy32/

echo "Manualmente nos introducimos en la jaula con: chroot /home/jaulas/saucy32"


