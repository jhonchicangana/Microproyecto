#!/bin/bash

echo "*****INSTALANDO PAQUETES PARA ARTILLERY*****"

echo "INSTALAR nodejs Y npm"

curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get install nodejs -y

sudo apt install npm -y

sudo npm install -g artillery

sudo mkdir artillery
