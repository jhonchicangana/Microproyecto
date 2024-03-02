wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install consul -y
echo "iniciar agente consul"
#consul agent -ui -dev -bind=192.168.100.5 -client=0.0.0.0 -data-dir=
sudo consul agent -ui -server -bootstrap-expect=1 -bind=192.168.100.5 -client=0.0.0.0 -data-dir=.
#sudo consul agent -ui -server -bootstrap-expect=1 -bind=192.168.100.5 -client=0.0.0.0 -data-dir=.
