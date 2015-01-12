#Tercer hito: Creación de un entorno de pruebas para la aplicación

A continuación, vamos a explicar paso a paso como se ha llevado a cabo la resolución del tercer hito de la asignatura. En éste se pedía, diseñar usando alguna de los sistemas de aislamiento de recursos vistos en los ejercicios,un contenedor o jaula con el que se pueda probar fácilmente en esta fase la aplicación que se está diseñando.

Además, hemos avanzado en el diseño y funcionalidad de nuestra aplicación llevándola a un nivel más cercano de su estado final. Para ello, hemos incluido un sencillo formulario que incluirá los datos dados en una hoja de cálculo de Google Drive.
De esta forma, nuestra aplicación se encuentra en un estado casi final de desarrollo, quedando únicamente por ultimar los campos que el cliente quiera tener en su formulario e incluir un calendario de eventos (Google Calendar).

##Introducción

Haciendo uso de las herramientas vistas en las prácticas, vamos a proceder a crear un sistema mínimo en el cual crearemos una jaula que nos servirá como entorno de pruebas de nuestra aplicación. En ella instalaremos el SDK de Google App Engine con el que estamos trabajando y probaremos de forma local que nuestra aplicación funciona correctamente.

##Paso 1: Creación de un sistema mínimo usando debootstrap

*Todas las ordenes de éste paso pueden ser ejecutadas haciendo uso del script [creacion_jaula.sh](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/script/creacion_jaula.sh)*

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

*Todas las ordenes de éste paso pueden ser ejecutadas haciendo uso del script [instalacion_herramientas.sh](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/script/instalacion_herramientas.sh) previa ejecución del script creacion_jaula.sh*

Con el fin de crear un entorno de pruebas adecuado para probar nuestra aplicación, vamos a instalar el framework del que haremos uso (webapp2) e instalaremos el lenguaje en el que hemos desarrollado nuestra apalicación (python).

Instalamos python:

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-4.png)


A continuación, dado que haremos uso de la herramienta 'pip' para la instalación de webapp2, instalamos 'pip':

```sudo apt-get install python-pip python-dev build-essential``` 

Y procedemos a instalar webapp2 juntas con las librerías de python necesarias

```pip install WebOb``` 

```pip install Paste``` 

```pip install webapp2 ``` 

Una vez hecho esto nos descargamos el JDK de Google App Engine:

```wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.17.zip --no-check-certificate```

Y lo descomprimimos:

```unzip google_appengine_1.9.17.zip ``` 

(Si no tenemos zip instalado lo instalamos: ```apt-get install zip ``` )

##Paso 3: Ejecución de la aplicación

Una vez disponemos de todas las herramientas necesarias, vamos a probar que nuestra aplicación funciona. Para ello, ejecutamos el código python de ésta y comprobamos si está corriendo con webapp2 en el 'localhost'. Para ello, tenemos que ejecutar lo siguiente:

```python "carpeta del sdk"/dev_appserver.py /"carpeta del proyecto" ``` 

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-12.png)

Como vemos, el servidor está escuchando. Comprobamos en "localhost:8080" que la aplicación funciona correctamente.

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-13.png)

Al aceptar se nos mandará a una nueva página que nos ofrece el enlace de la hoja de cálculo.

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-14.png)

Si pinchamos, podemos ver que la inserción se ha realizado con éxito:

![](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/imagenes/hito3-15.png)

Como vemos, todo funciona correctamente. Lo puedes probar en [pruebadriveiv](http://pruebadriveiv.appspot.com)
