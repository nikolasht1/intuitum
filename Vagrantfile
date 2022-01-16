# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.provision "shell", inline: <<-SHELL
      apt-get update -y
      echo "10.0.0.120  bento-server" >> /etc/hosts
    SHELL
    config.vm.provision :shell, path: "C:/intuitum/intuitSetings.sh"
  
    config.vm.define "intuit" do |intuit|
      intuit.vm.box = "bento/ubuntu-18.04"
      intuit.vm.hostname = "bento-server"
      intuit.vm.network "private_network", ip: "10.0.0.120"
      intuit.vm.provider "virtualbox" do |vb|
      intuit.disksize.size = "30GB"
          vb.memory = 8192
          vb.cpus = 2
        end
           
    end

end
