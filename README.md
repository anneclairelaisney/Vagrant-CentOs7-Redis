# Vagrant-CentOs7-Redis
Vagrant file and scripts for CentOs 7 with Redis Provisioning

## Instructions
- Install Virtualbox ( Ensure vboxmanage executable is in path )
- Install Vagrant ( Ensure vagrant executable is in path )
- Add Centos/7 box to Vagrant
    ```
    vagrant box add centos/7
    ```
- Copy the files into a folder and execute
    ```
     vagrant up
    ```
- (Optional) For two way vagrant folder sync between host and guest in Virtualbox. Install vbox guest addition plugin by executing
    ```
    vagrant plugin install vagrant-vbguest
    ```
    and uncomment the following line in the vagrant file
    ```
     # config.vm.synced_folder ".", "/vagrant", type:"virtualbox"
    ```

    Note that this takes longer to provision.  

