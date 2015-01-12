#Script: Crear una jaula en tu equipo

Para la creación de la jaula que nos servirá como entorno de pruebas, basta con ejecutar uno a uno los comandos que se describen a continuación o ejecutar el script [creacion_jaula.sh](): 

i) Instalación de debootstrap
```apt-get install debootstrap```
ii) Creación de una nueva distro
```debootstrap --arch=i386 saucy /home/jaulas/saucy32/ http://archive.ubuntu.com/ubuntu```
iii) Copiamos dentro de la jaula el segundo script que tendremos que ejecutar para facilitar el proceso
```cp instalacion_herramientas.sh /home/jaulas/saucy32/```
iv) Manualmente entramos en la jaula
```echo "Manualmente nos introducimos en la jaula con: chroot /home/jaulas/saucy32"```

Una vez hecho esto ejecutamos el script "instalacion_herramientas.sh"
