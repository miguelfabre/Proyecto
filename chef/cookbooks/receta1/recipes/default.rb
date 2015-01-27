# Actualizamos los repositorios 
execute "apt-get-update" do
  command "apt-get update"
end

# Instalación de debootstrap
execute "install debootstrap" do
  command "apt-get install debootstrap"
end

#Creación de una nueva distro
execute "create new distro" do
  command "debootstrap --arch=i386 saucy /home/jaulas/saucy32/ http://archive.ubuntu.com/ubuntu"
end

# Instalamos python 
execute "install python" do
  command "sudo chroot /home/jaulas/saucy32/ apt-get install python -y"
end

# Instalamos una serie de herramientas necesarias
execute "install python3-setuptools" do
  command "sudo chroot /home/jaulas/saucy32/ apt-get install python3-setuptools -y"
end

execute "easy_install3 pip" do
	command "easy_install3 pip"
end

execute "install python-dev build-essential" do
  command "sudo chroot /home/jaulas/saucy32/ apt-get install python-dev build-essential -y"
end

execute "install WebOb" do
  command "sudo chroot /home/jaulas/saucy32/ easy_install3 WebOb"
end

execute "install Paste" do
  command "sudo chroot /home/jaulas/saucy32/ easy_install3 Paste"
end

execute "install webapp2" do
  command "sudo chroot /home/jaulas/saucy32/ easy_install3 webapp2"
end

