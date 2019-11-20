#!/bin/bash

# Script = Matutenção do Sistema
# Info   = Fazer limpeza e atualização do sistema
# Author = Felipe dos Santos
# Email  = felipesan.cwb@gmail.com
# Github = fsantos91

# O 'sudo apt update', verefica e atualiza os repositórios
echo "Atualizando repositórios..."
sudo apt update
echo ""
echo ""

# O 'sudo apt upgrade -y', instala todas as atualizações encontradas, inclusive de suas dependencias
echo "Instalando atualizações..."
sudo apt upgrade -y
echo ""
echo ""

# o 'sudo apt dist-upgrade - y', faz a atualização do sistema
echo "Atualizando Sistema"
sudo apt dist-upgrade -y
echo ""
echo ""

# O 'sudo apt autoclean -y', remove todo o lixo residual do apt
echo "Limpando lixo residual do apt..."
sudo apt autoclean -y
echo ""
echo ""

# O 'sudo apt autoremove', remove todos os pacotes ja instalados e que já não são mais necessarios
echo "Limpando pacotes desnecessarios..."
sudo apt autoremove -y
echo ""
echo ""

# O comando a seguir remove todos os arquivos que estão na lixeira
echo "Limpando a lixeira"
sudo rm -rf /home/$USER/.local/share/Trash/files/*
echo ""
echo ""

# O comando a seguir remove todos os arquivos do diretório /tmp
echo "Limpando arquivos temporarios"
sudo rm -rf /var/tmp/*
echo ""
echo ""

# O comando a seguir repara pacotes quebrados
echo "Reparando pacotes quebrados..."
sudo dpkg --configure -a
echo ""
echo ""
echo "Manutenção concluida!"
