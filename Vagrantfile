# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos"
  config.vm.box_url = "https://vagrantcloud.com/chef/boxes/centos-6.6/versions/1/providers/virtualbox.box"

  config.vm.define :cnf1 do |cnf|
    cnf.vm.network :private_network, ip: "192.168.56.101"
    cnf.vm.provision :shell, :path => "script/setup.sh"
  end

  config.vm.define :cnf2 do |cnf|
    cnf.vm.network :private_network, ip: "192.168.56.102"
    cnf.vm.provision :shell, :path => "script/setup.sh"
  end

  config.vm.define :cnf3 do |cnf|
    cnf.vm.network :private_network, ip: "192.168.56.103"
    cnf.vm.provision :shell, :path => "script/setup.sh"
  end

  config.vm.define :shard1 do |shard|
    shard.vm.network :private_network, ip: "192.168.33.104"
    shard.vm.provision :shell, :path => "script/setup.sh"
  end

  config.vm.define :shard2 do |shard|
    shard.vm.network :private_network, ip: "192.168.33.105"
    shard.vm.provision :shell, :path => "script/setup.sh"
  end

  config.vm.define :shard3 do |shard|
    shard.vm.network :private_network, ip: "192.168.33.106"
    shard.vm.provision :shell, :path => "script/setup.sh"
  end

end
