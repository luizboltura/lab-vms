#!/bin/bash

set -e  # Faz com que o script pare ao encontrar um erro
set -x  # Mostra cada comando sendo executado (para depuração)

# Atualiza a lista de pacotes
sudo apt-get update

# Instala os pré-requisitos para o Ansible
sudo apt-get install -y software-properties-common

# Adiciona o repositório oficial do Ansible
sudo apt-add-repository --yes --update ppa:ansible/ansible

# Instala o Ansible
sudo apt-get install -y ansible python3 python3-pip

# Configura o Ansible para usar Python 3
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1
sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# Verifica a instalação do Ansible
ansible --version

