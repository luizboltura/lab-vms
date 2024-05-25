# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Configuração da máquina virtual "control-node"
  config.vm.define "control-node" do |control_node|
    control_node.vm.box = "ubuntu/bionic64" # Substitua pela box desejada
    control_node.vm.network "private_network", ip: "192.168.56.10"

     # Provisionamento usando o script shell externo
     control_node.vm.provision "shell", path: "install_ansible.sh"
    
  end

  # Configuração da máquina virtual "app-01"
  config.vm.define "app-01" do |app01|
    app01.vm.box = "centos/7" # Substitua pela box desejada
    app01.vm.network "private_network", ip: "192.168.56.11"
  end

  # Configuração da máquina virtual "app-02"
  config.vm.define "app-02" do |app02|
    app02.vm.box = "debian/buster64" # Substitua pela box desejada
    app02.vm.network "private_network", ip: "192.168.56.12"
  end

end