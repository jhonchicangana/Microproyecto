
echo "Actualizando repositorios"
sudo apt-get update

echo "Instalando HAProxy"
sudo apt-get install -y haproxy

sudo systemctl enable haproxy

echo "Copiar la configuración de HAProxy"
sudo cp /vagrant/haproxy.cfg /etc/haproxy/haproxy.cfg

echo "mensaje de error haproxy"

#sudo cp /vagrant/script/haproxy/error.html /etc/haproxy/error.html

echo "Reiniciando HAProxy"
sudo systemctl restart haproxy