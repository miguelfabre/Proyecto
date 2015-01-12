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
# Descargamos el sdk de Google App Engine
wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.17.zip --no-check-certificate
# Instalamos la herramienta zip
apt-get install zip
# Descomprimimos el fichero descargado, con lo que ya tendremos disponibles las herramientas del sdk
unzip google_appengine_1.9.17.zip
# Una vez hecho esto ya tenemos instalado el entorno de desarrollo necesario para construir y ejecutar aplicaciones que luego funcionarán bajo Google App Engine

