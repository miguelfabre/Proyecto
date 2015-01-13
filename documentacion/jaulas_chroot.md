# Uso de chroot para la creación de jaulas

Chroot permite ejecutar un proceso bajo un directorio raíz simulado, de manera que el proceso no puede acceder a archivos fuera de ese directorio. Se utiliza principalmente para dos cosas:

* Para probar programas sospechosos o peligrosos en un entorno seguro.
* Para enjaular un servicio de red de manera que quede limitado el entorno de ese servicio y acceda sólo a lo que debe, evitando que escale accesos.

En nuestro caso, vamos a utilizar chroot para llevar a cabo la segunda opción. En concreto, vamos a crear un entorno de pruebas con el que poder aislar la ejecución de nuestro proyecto.

Las principales ventajas de usar este servicio sobre una máquina virtual son las siguientes:

* Se le pueden transferir archivos más fácilmente
* Permite funcionar a mayor velocidad porque aprovecha el sistema operativo y el entorno gráfico que ya se está ejecutando.
* Las aplicaciones gráficas pueden integrarse con el servidor y el gestor de ventanas.

Por esto hemos decidido que usar las jaulas chroot es una buena opción.



