# Despliegue de la aplicación y ejecución de test para comprobar su funcionamiento en 3 sencillos pasos (Ubuntu)

## 1. Descarga de la carpeta "script" de nuestro proyecto estos 4 script

* [creacion_jaula.sh] (https://github.com/miguelfabre/Proyecto/blob/master/script/creacion_jaula.sh)
* [instalacion_herramientas.sh] (https://github.com/miguelfabre/Proyecto/blob/master/script/instalacion_herramientas.sh)
* [ejecutar_test.sh] (https://github.com/miguelfabre/Proyecto/blob/master/script/ejecutar_test.sh)
* [despliegue.sh] (https://github.com/miguelfabre/Proyecto/blob/master/script/despliegue.sh)

## 2. Ejecuta el script "despliegue.sh"

Este script desencadenará la ejecuión de "creacion_jaula.sh", que creará en tu máquina la jaula chroot en la que se desplegará la aplicación,
e "instalacion_herramientas.sh", que instalará las herramientas necesarias para el despliegue de la máquina así como importará los fuentes de la aplicación para su posterior uso.

* ```./despligue.sh```

## 3. Ejecución de test

Una vez llegados a este punto nuestra aplicación ya estará corriendo en el [localhost](http://localhost:8080) de tu máquina. Puedes probar tú mismo que funciona accediendo a dicha dirección o ejecutar un test de prueba:

* ```./ejecutar_test.sh```
