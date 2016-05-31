#!/bin/bash
# Author:: Wlademir
# Time::   18/04/2016

echo "DESEJA INSTALAR O AMBIENTE RUBY [s/n]"
read INSTALL_RUBY
if [ "$INSTALL_RUBY" != "s" ]; then
  echo "O ambiente ruby não será instalado"
else
  echo "instalando rvm"
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  \curl -sSL https://get.rvm.io | bash -s stable --ruby

#  clear
  echo "Instalando algumas Dependencias"
  sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
  
#  clear
  echo "Instalando mais dependencias"
  sudo apt-get install -y wget ca-certificates -y

#  clear
  echo "Puxando chaves postgres"
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

#  clear
  echo "Atualizando repositorios"
  sudo apt-get update

#  clear
  echo "Atualizando sistema"
  sudo apt-get upgrade -y

#  clear
  echo "Instalando postgres e pgadmin"
  sudo apt-get install -y postgresql-9.5 pgadmin3
 
#  clear
  echo "Instalando mais dependencias"
  sudo apt-get install -y libpq-dev imagemagick redis-server memcached nodejs libmysqlclient-dev freetds-bin freetds-dev

#  clear
  echo "instalando image magick"
  sudo apt-get install -y libmagickwand-dev 

#  clear  
  echo "instalando vim"
  sudo apt-get install -y  vim

#  clear
  echo "instalando java"
  sudo apt-get install -y openjdk-8-jre-headless

#  clear
  echo "instalando git"
  sudo apt-get install -y git

#  clear
  echo "instalando sublime text"
  sudo add-apt-repository ppa:webupd8team/sublime-text-3
  sudo apt-get update
  sudo apt-get install -y sublime-text-installer

#  clear
  echo "instalando libxslt"
  sudo apt-get install -y libxslt-dev
fi

#clear
echo "Instalação Finalizada!!!"
