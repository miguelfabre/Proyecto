#Script: Ejecutar un test de prueba

Una vez que hemos instalado la jaula y todas las herramientas necesarias (scripts ["Crear una jaula en tu equipo"](https://github.com/miguelfabre/Proyecto/blob/master/documentacion/crear_jaula.md) e ["Instalar y ejecutar SaraosOSL en el entorno de pruebas"](https://github.com/miguelfabre/Proyecto/blob/master/documentacion/instalacion_saraososl.md) ) podemos ejecutar este script que realiza un test para comprobar el correcto funcionamiento de la aplicación:

i) Petición al servidor para que se ejecute una inserción 

```curl http://localhost:8080/test```

ii) Breve apunte que señala dónde podemos obtener si el resultado de la ejecución ha sido satisfactorio o no

```echo "Se ha realizado el test. Si se ha superado el test, en el terminal que ejecuta el servidor debe aparecer un mensaje de exito. En caso contrario se mostrará un mensaje de error lanzado por una excepcion (podemos comprobar además en la hoja de cálculo de google drive que se han insertado los datos.)"```
