#!/bin/bash

# Montamos el sistema de ficheros /proc
mount -t proc proc /proc
# Configuramos el Locale para que no de errores 
apt-get install language-pack-es
# Instalamos python y una serie de herramientas necesarias
apt-get install python
apt-get install python3-setuptools
easy_install3 pip
apt-get install python-dev build-essential
pip install WebOb
pip install Paste
pip install webapp2
# Instalamos wget para poder descargar archivos
apt-get install wget
#Instalamos curl para posteriormente poder realizar los test de pruebas
apt-get install curl
# Descargamos el sdk de Google App Engine
wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.17.zip --no-check-certificate
# Instalamos la herramienta zip
apt-get install zip
# Descomprimimos el fichero descargado, con lo que ya tendremos disponibles las herramientas del sdk
unzip google_appengine_1.9.17.zip
# Instalamos la herramienta cURL para hacer uso de ésta a la hora de ejecutar los tests
apt-get install curl
# Una vez hecho esto ya tenemos instalado el entorno de desarrollo necesario para construir y ejecutar aplicaciones que luego funcionarán bajo Google App Engine
# Instalamos git
apt-get install -y git
# Clonamos la carpeta en donde se encuentran los ficheros fuentes de la aplicacion
git clone https://github.com/FranciscoPorcel/Fuentes.git
#Ejecutamos la aplicacion en la dirección 0.0.0.0 que es donde está definido el 'localhost' en Koding
python google_appengine/dev_appserver.py --host=0.0.0.0 Fuentes/pruebadriveiv/

