#!/bin/bash
set -e

# Define senha do usuário coder (usada tanto no code-server quanto no SSH)
echo "coder:${PASSWORD:-changeme}" | sudo chpasswd

# Permite login SSH com senha
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Inicia o servidor SSH em background
sudo /usr/sbin/sshd

# Inicia o code-server (browser)
exec code-server --bind-addr 0.0.0.0:8080 /home/coder/workspace
