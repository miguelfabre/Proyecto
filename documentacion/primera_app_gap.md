#Tu primera aplicación con Google App Engine

##Paso 1: Creación de la aplicación

Accedemos a [Google App Engine] (https://appengine.google.com/start), hacemos click en "Create application" y completamos el formulario para crear nuestra aplicación.

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito%202/imagenes/hito2-1.png)

##Paso 2: Configuración

Antes de continuar con este guión, deberemos descargar el [Google App Engine Python SDK] (https://cloud.google.com/appengine/downloads#Google_App_Engine_SDK_for_Python) para el sistema operativo elegido para programar la aplicación creada anteriormente. En nuestro caso usaremos Linux.

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito%202/imagenes/hito2-2.png)

Una vez descargado, descomprimimos el .zip en una carpeta dedicada a nuestra aplicación.

##Paso 3: Creación de un manejador simple

Una aplicación App Engine, entre otras cosas, tiene un archivo de configuración llamado [app.yaml] (https://github.com/FranciscoPorcel/Fuentes/blob/master/pruebadriveiv/app.yaml) que describe el script que se debe ejecutar para las direcciones URL.

Por lo tanto, dentro del directorio de la aplicación, creamos un archivo llamado "app.yaml"

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito%202/imagenes/hito2-3.png)

##Paso 4: El framework webaap2

Google App Engine soporta todo tipo de frameworks para Python como Django, CherryPy, Pylons, web.py... Sin embargo, Google App Engine incluye por defecto un framework para aplicaciones web llamado webapp2. Éste se encuentra ya instalado tanto en el entorno App Engine como en el SDK por lo que usaremos dicho framework.

Nuestro archivo [helloworld.py] (https://github.com/miguelfabre/Fuentes/blob/master/pruebadriveiv/helloworld.py) controlador Python tendrá 2 partes:
* 1. Una o más clases controladoras de solicitudes que reciben las solicitudes y proporcionan las respuestas.
* 2. El manejador de enlaces que ejecutarán una determinada clase dependiendo de la ruta introducida.

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito%202/imagenes/hito2-4.png)

Éste código hace lo siguiente:

Si el usuario no está autentificado, te lleva a una página de autentificación en la que te pide permiso para identificarte con tu correo gmail.

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito%202/imagenes/hito2-5.png)

En caso contrario, muestra un mensaje de bienvenida con tu nombre de usuario gmail.

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito%202/imagenes/hito2-6.png)

## Paso 5: Subir nuestra aplicación a la red

Llegados a este punto, tan solo nos queda subir nuestra aplicación a la red. Para ello, deberemos ejecutar las sentencias mostradas en la imagen.

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito%202/imagenes/hito2-7.png)

##Paso 6: Ejecución 

Por último, ya solo nos quedaría comprobar que nuestra aplicación funciona correctamente. Nosotros ya lo hemos comprobado en el paso 4, pero tú puedes hacerlo ahora [Gestion de Eventos - OSL] (http://gestiondeeventos-osl.appspot.com/)
