#Tercer hito: Creación de un entorno de pruebas para la aplicación

A continuación, vamos a explicar paso a paso como se ha llevado a cabo la resolución del tercer hito de la asignatura. En éste se pedía, diseñar usando alguna de los sistemas de aislamiento de recursos vistos en los ejercicios,un contenedor o jaula con el que se pueda probar fácilmente en esta fase la aplicación que se está diseñando.

##Introducción

Haciendo uso de las herramientas vistas en las prácticas, vamos a proceder a crear un sistema mínimo en el cual crearemos una jaula que nos servirá como entorno de pruebas de nuestra aplicación.

##Paso 1: Creación de un sistema mínimo usando debootstrap

En primer lugar, creamos un sistema mínimo usando debootstrap. En caso de no tener dicha herramienta instalada, procedemos de la manera habitual.

```sudo apt-get install debootstrap``` 

Creamos una nueva distro en el directorio saucy32

```sudo debootstrap --arch=i386 saucy /home/jaulas/saucy32/```

Comprobamos que la instalación ha resultado exitosa

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-1.png)

Una vez terminada la instalación del sistema, accedemos a la jaula usando 'chroot':
```sudo chroot /home/jaulas/saucy32```

Tal como vimos en el tercer guión de ejercicios, para que la máquina funcione correctamente es necesario montar el sistema de ficheros '/proc'. Para ello, ejecutamos:

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-2.png)

Ahora configuramos el Locale para que no de errores (como se detalla en el tema 3). 

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-3.png)


##Paso 2: Instalación de herramientas necesarias para el entorno de pruebas

Con el fin de crear un entorno de pruebas adecuado para probar nuestra aplicación, vamos a instalar el framework del que haremos uso (webapp2) e instalaremos el lenguaje en el que hemos desarrollado nuestra apalicación (python).

Instalamos python:

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-4.png)


A continuación, dado que haremos uso de la herramienta 'pip' para la instalación de webapp2, instalamos 'pip':

```sudo apt-get install python-pip python-dev build-essential``` 

Y procedemos a instalar webapp2 juntas con las librerías de python necesarias

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-5.png)

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-6.png)

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-7.png)


##Paso 3: Ejecución de la aplicación

Una vez disponemos de todas las herramientas necesarias, vamos a probar que nuestra aplicación funciona. Para ello, ejecutamos el código python de ésta y comprobamos si está corriendo con webapp2 en el 'localhost'.

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito%202/imagenes/hito3-11.png)

Como vemos, todo funciona correctamente.
