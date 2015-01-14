#!/bin/bash

# Realizamos una petición para ejecutar el test
curl http://localhost:8080/test 
echo "Se ha realizado el test. Si se ha superado el test, en el terminal que ejecuta el servidor debe aparecer un mensaje de exito. En caso contrario se mostrará un mensaje de error lanzado por una excepcion (podemos comprobar además en la hoja de cálculo de google drive que se han insertado los datos.)"
