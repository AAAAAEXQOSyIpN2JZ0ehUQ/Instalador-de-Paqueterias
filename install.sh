#!/bin/bash

cd /opt
sudo rm -rf Instalador-de-Paqueterias
sudo git clone https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/Instalador-de-Paqueterias.git
sudo chmod +x Instalador-de-Paqueterias/*
cd Instalador-de-Paqueterias
ls -lthas
cd
echo "cd /opt/Instalador-de-Paqueterias && sudo ./kptools.sh" > kptools
sudo chmod +x kptools
sudo mv kptools /usr/local/bin/
cd
