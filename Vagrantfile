# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

config.vm.network "public_network", type:"dhcp", bridge: "wlp3s0"

  (1..2).each do |i|
    config.vm.define "web-#{i}" do |web|
         web.vm.box = "centos/7"
         web.vm.hostname = "web-#{i}"
         web.vm.provision "shell", path: "server.sh"
         web.vm.provision "shell", path: "script.sh"
         end
    end
end
