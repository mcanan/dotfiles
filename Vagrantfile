# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.vm.box = "debian/stretch64"
  config.vm.box_version = "9.0.0"
  config.vm.provision "shell", path: "init.sh"
end
