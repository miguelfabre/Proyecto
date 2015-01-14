# Despliegue de la aplicación y ejecución de test para comprobar su funcionamiento en 5 sencillos pasos (Ubuntu)

## 1. Descarga de la carpeta "script" de nuestro proyecto estos tres script

* [creacion_jaula.sh] (https://github.com/miguelfabre/Proyecto/blob/master/script/creacion_jaula.sh)
* [instalacion_herramientas.sh] (https://github.com/miguelfabre/Proyecto/blob/master/script/instalacion_herramientas.sh)
* [ejecutar_test.sh] (https://github.com/miguelfabre/Proyecto/blob/master/script/ejecutar_test.sh)

## 2. Ejecuta el script "creacion_jaula.sh"

Este script creará en tu máquina la jaula chroot en la que se desplegará la aplicación:

* ```./creacion_jaula.sh```

## 3. Accedemos a la jaula

Tal como se indica al concluir la ejecución del script "creacion_jaula.sh", debemos movernos a la jaula:

* ```sudo chroot /home/jaulas/saucy32```

## 4. Ejecuta el script "instalacion_herramientas.sh"

Este script instalará las herramientas necesarias para el despliegue de la máquina así como importará los fuentes de la aplicación para su posterior uso. 
No será necesario mover los script a la jaula pues esto ya lo hace el script anterior, tu solo ejecuta este comando:

* ```./instalacion_herramientas.sh```

## 5. Ejecución de test

Una vez llegados a este punto nuestra aplicación ya estará corriendo en el [localhost](http://localhost:8080) de tu máquina. Puedes probar tú mismo que funciona accediendo a dicha dirección o ejecutar un test de prueba:

* ```./ejecutar_test.sh```
