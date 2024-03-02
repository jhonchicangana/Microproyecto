# instalando consul y su agente

#!/bin/bash

echo "*****INSTALANDO PAQUETES PARA SERVIDOR WEB 3*****"

echo "INSTALANDO CONSUL"
 wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

 echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

 sudo apt install consul -y

echo "INSTALAR nodejs Y npm"

sudo apt install nodejs -y

sudo apt install npm -y

echo "CREANDO FOLDER consul/app Y COPIANDO ARCHIVO indexw1.js"

sudo mkdir -p consul/app 

sudo cp /vagrant/consul/app/indexw1.js consul/app/indexw1.js

cd consul/app

echo "INSTALANDO NPM CONSUL Y NPM EXPRESS"

sudo npm install consul

sudo npm install express

echo "CREANDO INSTANCIA CONSUL"

sudo consul agent -bind=192.168.100.3 -data-dir=.


echo "*****INSTALACIÓN PAQUETES PARA SERVIDOR WEB 32 TERMINADA*****"