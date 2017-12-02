# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.network "forwarded_port", guest: 6379, host: 6379
  # Install Virtualbox plugin"vagrant plugin install vagrant-vbguest" 
  # and uncomment the following to have 2 way guest-host folder binding
  # config.vm.synced_folder ".", "/vagrant", type:"virtualbox"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end
  # Provision Redis
  config.vm.provision "shell", :path => "provisionRedis.sh"
   
end
