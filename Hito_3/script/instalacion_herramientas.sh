#!/bin/bash

mount -t proc proc /proc
apt-get install language-pack-es
apt-get install python
apt-get install python3-setuptools
easy_install3 pip
apt-get install python-dev build-essential
pip install WebOb
pip install Paste
pip install webapp2

apt-get install wget
wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.17.zip --no-check-certificate
apt-get install zip
unzip google_appengine_1.9.17.zip

