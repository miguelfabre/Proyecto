#!/bin/bash

# Montamos el sistema de ficheros /proc
mount -t proc proc /proc
# Configuramos el Locale para que no de errores 
apt-get install language-pack-es -y
# Instalamos python y una serie de herramientas necesarias
apt-get install python -y
apt-get install python3-setuptools -y
easy_install3 pip
apt-get install python-dev build-essential -y
easy_install3 Paste 
easy_install3 Paste
easy_install3 webapp2
# Instalamos wget para poder descargar archivos
apt-get install wget
#Instalamos curl para posteriormente poder realizar los test de pruebas
apt-get install curl -y
# Descargamos el sdk de Google App Engine
wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.17.zip --no-check-certificate
# Instalamos la herramienta zip
apt-get install zip -y
# Descomprimimos el fichero descargado, con lo que ya tendremos disponibles las herramientas del sdk
unzip google_appengine_1.9.17.zip
# Una vez hecho esto ya tenemos instalado el entorno de desarrollo necesario para construir y ejecutar aplicaciones que luego funcionarán bajo Google App Engine
# Instalamos git
apt-get install -y git
# Clonamos la carpeta en donde se encuentran los ficheros fuentes de la aplicacion
git clone https://github.com/miguelfabre/pruebadriveiv.git
#Ejecutamos la aplicacion en la dirección 0.0.0.0 que es donde está definido el 'localhost' en Koding
python google_appengine/dev_appserver.py --host=0.0.0.0 pruebadriveiv/

