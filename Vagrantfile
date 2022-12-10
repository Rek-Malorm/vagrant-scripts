# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

require 'yaml'

base_config = YAML.load_file(File.join(File.dirname(__FILE__), "base.yaml"))

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box_check_update = "false"
   config.vm.provider "virtualbox" do |vb|
     vb.memory = base_config["config"]["memory"]
     vb.cpus = base_config["config"]["threads"]
     vb.customize ["modifyvm", :id, "--ioapic", "on"]
   end

  config.vm.define base_config["config"]["name"]
  config.vm.box = "ubuntu/lunar64"
  config.vm.provision :shell, path: "bootstrap.sh"

  config.ssh.forward_x11 = true

  config.vm.synced_folder ".", "/vagrant", disabled: true

  if(base_config["config"]["shares"] != nil)
    base_config["config"]["shares"].each do |share|
      config.vm.synced_folder share["source"], share["destination"], create: true
    end
  end

end
