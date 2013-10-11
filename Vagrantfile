# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  
  config.vm.network :forwarded_port, guest: 8888, host: 80
  config.vm.network :forwarded_port, guest: 3001, host: 3001

  config.vm.provider :vmware_fusion do |vm, override|
    override.vm.box_url = "http://files.vagrantup.com/precise64_vmware.box"
    vm.vmx["memsize"] = "2048"
    vm.vmx["numvcpus"] = "8"
  end

  config.vm.provider :virtualbox do |vm, override|
    override.vm.box_url = "http://files.vagrantup.com/precise64.box"
    vm.customize ["modifyvm", :id, "--cpus", "8"]
    vm.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
  end
end
