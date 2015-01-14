# Integración continua

La integración continua consiste en hacer integraciones automáticas de un proyecto lo más a menudo posible para así poder detectar fallos cuanto antes. Entendemos por integración la compilación y ejecución de pruebas en un proyecto. 

Para llevar a cabo esta integración continua hemos desarrollado un test que nos permite comprobar si se pueden insertar datos en una hoja de cálculo de Google desde nuestra aplicación (lo cual constituye la base de nuestro proyecto). Este test, realiza una inserción en la hoja de cálculo compuesta por un nombre predeterminado (en nuestro caso "Prueba") y por la hora y fecha del momento en el que se ha realizado el test (mediante la función ```time.strftime("%c"))``` disponible en Python). 

Los resultados de la ejecución se muestran en el terminal en el que estemos ejecutando el servidor. Podemos ver un ejemplo en la siguiente imagen:

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/hito3-ejecucion-test.png)

Donde podemos observar el mensaje "Se ha insertado con éxito"

Podemos comprobar que efectivamente se ha realizado la inserción con éxito acudiendo a la hoja de cálculo de google:

![](https://github.com/miguelfabre/Proyecto/blob/master/imagenes/Hito_3/imagenes/hito3-comprobacion-test.png)

Como podemos observar la inserción contiene la fecha y hora en la que hemos realizado el test. Con ellas podemos comprobar cuál es la fila que acabamos de insertar y de esa forma no confundirnos.


