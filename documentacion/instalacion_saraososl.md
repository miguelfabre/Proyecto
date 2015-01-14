# Script: Instalar y ejecutar SaraosOSL en el entorno de pruebas

Para la instalación y ejecución la aplicación SaraosOSL, una vez creado el entorno de pruebas, basta con ejecutar uno a uno los comandos que se describen a continuación o ejecutar el script [instalacion_herramientas.sh](https://github.com/miguelfabre/Proyecto/blob/master/script/instalacion_herramientas.sh): 

i) Montamos el sistema de ficheros /proc

```mount -t proc proc /proc```

ii) Configuramos el Locale para que no de errores 

```apt-get install language-pack-es```

iii) Instalamos python y una serie de herramientas necesarias

```apt-get install python```

```apt-get install python3-setuptools```

```easy_install3 pip```

```apt-get install python-dev build-essential```

```pip install WebOb```

```pip install Paste```

```pip install webapp2```

iv) Instalamos wget para poder descargar archivos

```apt-get install wget```

v) Descargamos el sdk de Google App Engine

```wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.17.zip --no-check-certificate```

vi) Instalamos la herramienta zip

```apt-get install zip```

vii) Descomprimimos el fichero descargado, con lo que ya tendremos disponibles las herramientas del sdk

```unzip google_appengine_1.9.17.zip```

Una vez hecho esto ya tenemos instalado el entorno de desarrollo necesario para construir y ejecutar aplicaciones que luego funcionarán bajo Google App Engine.

viii) Instalamos git

```apt-get install -y git```

ix) Clonamos la carpeta en donde se encuentran los ficheros fuentes de la aplicacion

```git clone https://github.com/FranciscoPorcel/Fuentes.git```

x) Ejecutamos la aplicacion

```python google_appengine/dev_appserver.py Fuentes/pruebadriveiv/```

xi) Ahora nos vamos al navegador y escribimos http://localhost:8080/

```echo "Abrir el navegador y escribir http://localhost:8080/ para ver la app en funcionamiento."```

