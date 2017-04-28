# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "plainspooky/ubuntu-wily_amd64_vbox"

  # Configure forwarded ports
  config.vm.network "forwarded_port", guest: 2181, host: 2181 # Zookeeper
  config.vm.network "forwarded_port", guest: 9092, host: 9092 # Kafka
  config.vm.network "forwarded_port", guest: 8081, host: 8081 # Schema registry
  config.vm.network "forwarded_port", guest: 8082, host: 8082 # Kafka REST Proxy
  config.vm.network "forwarded_port", guest: 8083, host: 8083 # Kafka Connect - Distributed
  config.vm.network "forwarded_port", guest: 9021, host: 9021 # Confluent Control Center

  # Configure VM Ram usage
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = "2"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.sudo = true
    ansible.playbook = "ansible/playbook.yml"
  end
end
