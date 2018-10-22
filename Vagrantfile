# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
  
  config.vm.provision "shell", inline: <<-SHELL
    curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
    curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo
    yum -y update
    yum -y install \
     buildah \
     podman \
     vim \
     yarn
  SHELL
end
