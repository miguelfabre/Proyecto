#Despliegue y puesta en marcha de SaraosOSL (Ubuntu 14.04 - 32 bits)

## 1.Clonar nuestro proyecto de Git

Lo primero que deberás hacer para instalar SaraosOSL en tu equipo de forma local, será clonar el proyecto de SaraosOSL en tu máquina. Para ello:

```git clone https://github.com/miguelfabre/Proyecto.git```

## 2. Instalar chef

Tras haber instalado haber clonado el proyecto, deberás instalar "chef". Para ello:

```sudo curl -L https://www.opscode.com/chef/install.sh | sudo bash```


Una vez instalado, mueve la carpeta "chef" del proyecto anteriormente clonado a /etc.

```mv chef /etc```

## 3. Ejecutar chef

Una vez hecho esto, la solo tienes que acceder a la carpeta chef y ejecutar

```sudo chef-solo -c solo.rb```



