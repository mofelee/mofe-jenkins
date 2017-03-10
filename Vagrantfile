# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip: "192.168.59.5"

  config.ssh.insert_key = true

  config.vm.provision :shell do |shell|
    shell.inline = "DEBIAN_FRONTEND=noninteractive apt-get -y install python-simplejson"
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "tests/vagrant.yml"
    ansible.verbose = "vv"
  end
end
