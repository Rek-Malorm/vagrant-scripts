# Vagrant-Scripts!

This project contains a set of scripts and configuration for setting up sandboxed development environments. The vagrant environment supports x11 forwarding to allow the development of desktop GUI applications.
Each template can be reused to produce multiple VM's to allow for different levels of control and fidelity of permissions.

## Setup
Setup is relatively simple.

1. Setup Vagrant, See [www.vagrant.com](https://www.vagrantup.com/downloads) for more info.
2. Clone this Repo
   > git clone
3. Create a new directory for a new VM
   > mkdir java
4. Create a symbolic Link the vagrant file and the chosen bootstrap.sh file to the new directory
   > ln -s vagrant-scripts/Vagrantfile java/Vagrantfile
   > ln -s vagrant-scripts/Java/bootstrap.sh java/bootstrap.sh
5. Copy the base.yaml file to the new directory
   > cp vagrant-scripts/Java/base.yaml java/base.yaml
6. Modify the new base.yaml to meet the development needs
7. Create and run the VM
   > cd java
   > vagrant up && vagrant ssh

### base.yaml
The base.yaml file is there to provide an easier way to configure a vagrant environment. The structure is as follows.

    config:  
      name: "name"  # A name used to describe the purpose of the VM.
      memory: "1024"  # The memory alocated in MB's for the VM.
      threads: "2"  # The number of CPU threads given to the VM.
      shares:  # A list of shares that are to be shared from the host to the VM
        - { source: "/path/to/source", destination: "/path/to/destination" }  

