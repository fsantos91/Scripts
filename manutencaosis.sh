#!/bin/bash

# Script = Matutenção do Sistema
# Info   = Fazer limpeza e atualização do sistema
# Author = Felipe dos Santos
# Email  = felipesan.cwb@gmail.com
# Github = fsantos91

echo "Atualizando repositórios..."
sudo apt update
echo ""
echo ""
echo "Instalando atualizações..."
sudo apt upgrade -y
echo ""
echo ""
echo "Limpando lixo residual do apt..."
sudo apt autoclean -y
echo ""
echo ""
echo "Limpando pacotes desnecessarios..."
sudo apt autoremove -y
echo ""
echo ""
echo "Limpando a lixeira"
sudo rm -rf /home/$USER/.local/share/Trash/files/*
echo ""
echo ""
echo "Limpando arquivos temporarios"
sudo rm -rf /var/tmp/*
echo ""
echo ""
echo "Reparando pacotes quebrados..."
sudo dpkg --configure -a
echo ""
echo ""
echo "Manutenção concluida!"
sleep 4
