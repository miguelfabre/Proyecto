#Script: Crear una jaula en tu equipo

En este documento se explican los pasos que se dan en el script [creacion_jaula.sh](https://github.com/miguelfabre/Proyecto/blob/master/script/creacion_jaula.sh) para crear una jaula que nos servirá de entorno de pruebas.

* Podemos ejecutar el script [despliegue.sh](https://github.com/miguelfabre/Proyecto/blob/master/script/despliegue.sh) de tal forma que se realice el despliegue completo del entorno de pruebas. Este script incluye la ejecución del que se explica en este documento y de [instalacion_herramientas.sh](https://github.com/miguelfabre/Proyecto/blob/master/script/instalacion_herramientas.sh). 

i) Instalación de debootstrap

```apt-get install debootstrap```

ii) Creación de una nueva distro

```debootstrap --arch=i386 saucy /home/jaulas/saucy32/ http://archive.ubuntu.com/ubuntu```

iii) Copiamos dentro de la jaula el segundo script que tendremos que ejecutar para que se realicen dentro de esta las siguientes órdenes que se encuentran en el script [instalacion_herramientas.sh](https://github.com/miguelfabre/Proyecto/blob/master/script/instalacion_herramientas.sh). 

```cp instalacion_herramientas.sh /home/jaulas/saucy32/```
