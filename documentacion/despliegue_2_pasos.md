# Despliegue de la aplicación en 2 sencillos pasos (Ubuntu)

## 1. Descarga de la carpeta "script" de nuestro proyecto estos 4 script

* [creacion_jaula.sh] (https://github.com/miguelfabre/Proyecto/blob/master/script/creacion_jaula.sh)
* [instalacion_herramientas.sh] (https://github.com/miguelfabre/Proyecto/blob/master/script/instalacion_herramientas.sh)
* [despliegue.sh] (https://github.com/miguelfabre/Proyecto/blob/master/script/despliegue.sh)

## 2. Ejecuta el script "despliegue.sh"

Este script desencadenará la ejecuión de "creacion_jaula.sh", que creará en tu máquina la jaula chroot en la que se desplegará la aplicación, 
e "instalacion_herramientas.sh", que instalará las herramientas necesarias para el despliegue de la máquina e importará los fuentes de la aplicación para su posterior uso.

* ```./despligue.sh```

Una vez llegados a este punto nuestra aplicación ya estará corriendo en el [localhost](http://localhost:8080) de tu máquina. Puedes probar tú mismo que funciona accediendo a dicha dirección.
