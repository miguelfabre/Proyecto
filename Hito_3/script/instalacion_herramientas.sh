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

