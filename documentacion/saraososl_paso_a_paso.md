#Creación de jaula e instalación y ejecución de SaraosOSL paso a paso

A continuación, vamos a explicar paso a paso como se ha llevado a cabo la resolución del tercer hito de la asignatura. En éste se pedía, diseñar usando alguna de los sistemas de aislamiento de recursos vistos en los ejercicios,un contenedor o jaula con el que se pueda probar fácilmente en esta fase la aplicación que se está diseñando. Además había que realizar integración continua y un test de comprobación.

##Introducción

Haciendo uso de las herramientas vistas en las prácticas, vamos a proceder a crear un sistema mínimo en el cual crearemos una jaula que nos servirá como entorno de pruebas de nuestra aplicación. En ella instalaremos el SDK de Google App Engine con el que estamos trabajando y probaremos de forma local que nuestra aplicación funciona correctamente. Además usaremos Shippable para integración continua e introduciremos un test que nos permite comprobar si se realizan inserciones en la hoja de cálculo de Google Drive asociada a nuestro proyecto.

Para el despliegue de la aplicación en una jaula podemos utilizar el script [despliegue.sh](https://github.com/miguelfabre/Proyecto/blob/master/script/despliegue.sh), que crea dicha jaula y además instala en ella todas las herramientas necesarias para la ejecución de nuestra aplicación.

##Paso 1: Creación de un sistema mínimo usando debootstrap

* Todas las ordenes de éste paso pueden ser ejecutadas haciendo uso del script [creacion_jaula.sh](https://github.com/miguelfabre/Proyecto/blob/master/script/creacion_jaula.sh)

En primer lugar, creamos un sistema mínimo usando debootstrap. En caso de no tener dicha herramienta instalada, procedemos de la manera habitual.

```sudo apt-get install debootstrap``` 

Creamos una nueva distro en el directorio saucy32

```sudo debootstrap --arch=i386 saucy /home/jaulas/saucy32/```

Comprobamos que la instalación ha resultado exitosa

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/hito3-1.png)

Una vez terminada la instalación del sistema, accedemos a la jaula usando 'chroot':
```sudo chroot /home/jaulas/saucy32```

Tal como vimos en el tercer guión de ejercicios, para que la máquina funcione correctamente es necesario montar el sistema de ficheros '/proc'. Para ello, ejecutamos:

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/hito3-2.png)

Ahora configuramos el Locale para que no de errores (como se detalla en el tema 3). 

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/hito3-3.png)


##Paso 2: Instalación de herramientas necesarias para el entorno de pruebas

* Todas las ordenes de éste paso pueden ser ejecutadas haciendo uso del script [instalacion_herramientas.sh](https://github.com/miguelfabre/Proyecto/blob/master/Hito_3/script/instalacion_herramientas.sh) previa ejecución del script [creacion_jaula.sh](https://github.com/miguelfabre/Proyecto/blob/master/script/creacion_jaula.sh) 

Con el fin de crear un entorno de pruebas adecuado para probar nuestra aplicación, vamos a instalar el framework del que haremos uso (webapp2) e instalaremos el lenguaje en el que hemos desarrollado nuestra apalicación (python).

Instalamos python:

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/hito3-4.png)

A continuación, dado que haremos uso de la herramienta 'pip' para la instalación de webapp2, instalamos 'pip':

```sudo apt-get install python-pip python-dev build-essential``` 

Y procedemos a instalar webapp2 juntas con las librerías de python necesarias

```pip install WebOb``` 

```pip install Paste``` 

```pip install webapp2 ``` 

Una vez hecho esto nos descargamos el JDK de Google App Engine:

```wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.17.zip --no-check-certificate```

Instalamos la herramienta zip

```apt-get install zip```

Y lo descomprimimos:

```unzip google_appengine_1.9.17.zip ``` 


##Paso 3: Ejecución de la aplicación

Una vez hecho esto ya tenemos instalado el entorno de desarrollo necesario para construir y ejecutar aplicaciones que luego funcionarán bajo Google App Engine

Instalamos git

```apt-get install -y git```

Clonamos la carpeta en donde se encuentran los ficheros fuentes de la aplicacion

```git clone https://github.com/miguelfabre/pruebadriveiv.git```

Ejecutamos la aplicacion

```python google_appengine/dev_appserver.py pruebadriveiv/```

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/hito3-12.png)

Como vemos, el servidor está escuchando. Comprobamos en "localhost:8080" que la aplicación funciona correctamente.

Ahora nos vamos al navegador y escribimos http://localhost:8080/

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/hito3-13.png)

Al aceptar se nos mandará a una nueva página que nos ofrece el enlace de la hoja de cálculo.

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/hito3-14.png)

Si pinchamos, podemos ver que la inserción se ha realizado con éxito:

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/hito3-15.png)

Como vemos, todo funciona correctamente a nivel local. Tú lo puedes probar en la red en [SaraosOSL](http://pruebadriveiv.appspot.com)

