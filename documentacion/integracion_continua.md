# Integración continua (Shippable)

##¿En qué consiste?

La integración continua consiste en hacer integraciones automáticas de un proyecto lo más a menudo posible para así poder detectar fallos cuanto antes. Entendemos por integración la compilación y ejecución de pruebas en un proyecto. [Wikipedia](http://es.wikipedia.org/wiki/Integraci%C3%B3n_continua)

Para llevar a cabo la integración continua de nuestro proyecto, hemos hecho uso de la herramienta [Shippable](https://www.shippable.com/). 

##Shippable

IMPORTANTE: Para poder hacer uso de shippable una vez clonado el repositorio de la aplicación, deberás añadir a [shippable.yml](https://github.com/miguelfabre/Proyecto/blob/master/shippable.yml) tu cuenta de correo, tu contraseña y tu clave ssh-rsa de Shippable.

Shippable es una herramienta que permite, a través de tu cuenta de Git, acceder a todos tus repositorios, desplegar tu aplicación y ejecutar un test si éste está definido. 

Para nuestra aplicación, hemos diseñado un test que realiza una inserción en la hoja de cálculo de Google Drive habilitada para el proyecto. Con esto comprobamos que la aplicación está funcionando correctamente ya que dicho test está definido en el fichero principal de la aplicación [pruebadrive.py](https://github.com/miguelfabre/Proyecto/blob/master/pruebadriveiv.py), por lo que para poder ejecutarse el test debe estar funcionado la aplicación.

Este test es ejecutado por Shippable, por lo tanto, en el archivo de configuración de shippable, [shippable.yml](https://github.com/miguelfabre/Proyecto/blob/master/shippable.yml), habrá que hacer una llamada a [test.py](https://github.com/miguelfabre/Proyecto/blob/master/test.py) que es el que hace la llamada a la clase Test definida en el archivo principal de la aplicación.

Cada cambio hecho en directorio de la aplicación será detectado por Shippable, que comprobará que todo sigue funcionando correctamente notificandonos de ello vía mail. 

Aquí podemos ver una prueba de que nuestra aplicación supera el test.

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/shippable.png)






