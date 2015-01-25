#Google App Engine

Para este proyecto, los participantes del grupo de trabajo hemos decidido que la herramienta PaaS que vamos a usar será [Google App Engine](https://appengine.google.com/), plataforma de alojamiento y desarrollo de aplicaciones de Google. Google App Engine te permite construir aplicaciones web para grandes volúmenes de tráfico sin tener que gestionar una infraestructura para ello. Sus aplicaciones usan la misma tecnología de velocidad y fiabilidad que utilizan los sitios web de Google. Tú solo facilitas el código. 

#Python 2.7

Google App Engine nos permite crear aplicaciones web de forma sencilla y gratuita. Éstas aplicaciones pueden ser creadas en diversos lenguajes (Java, Python, PHP...). Nosotros utilizaremos [Python 2.7](https://www.python.org/download/releases/2.7/).

#webapp2

Google App Engine soporta todo tipo de frameworks para Python como Django, CherryPy, Pylons, web.py... Sin embargo, Google App Engine incluye por defecto un framework para aplicaciones web llamado [webapp2](https://webapp-improved.appspot.com/). Éste se encuentra ya instalado tanto en el entorno App Engine como en el SDK por lo que usaremos dicho framework.

#Jaulas chroot

Las jaulas chroot permiten ejecutar un proceso bajo un directorio raíz simulado, de manera que el proceso no puede acceder a archivos fuera de ese directorio. Se utiliza principalmente para probar programas sospechosos o peligrosos en un entorno seguro y para enjaular un servicio de red de manera que quede limitado el entorno de ese servicio y acceda sólo a lo que debe, evitando que escale accesos. Esta utilidad se puede instalar siguiendo los pasos de este [script](https://github.com/miguelfabre/Proyecto/blob/master/documentacion/crear_jaula.md) 

#Shippable

Shippable es una herramienta útil para integración continua que permite, a través de tu cuenta de Git, acceder a todos tus repositorios, desplegar tu aplicación y ejecutar un test si éste está definido.
