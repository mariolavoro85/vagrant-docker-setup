# -*- mode: ruby -*-
# vi: set ft=ruby :
# frozen_string_literal: true

Vagrant.configure('2') do |config|
  adapter_name = ENV['VAGRANT_ETHERNET_ADAPTER']

  config.vagrant.plugins = 'vagrant-proxyconf'
  if Vagrant.has_plugin?('vagrant-proxyconf')
    config.proxy.http     = ENV['http_proxy']
    config.proxy.https    = ENV['https_proxy']
    config.proxy.no_proxy = 'localhost,127.0.0.*,10.*,192.168.*'
  end

  config.vm.provider 'virtualbox' do |vb|
    vb.name = 'ubuntu-docker'
    vb.memory = '4096'
    vb.cpus = '2'
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
  end
  config.vm.box = 'mariolavoro85/ubuntu-18.04-docker'
  config.vm.hostname = 'vdocker'
  config.vm.network 'private_network', ip: '192.168.56.102', name: adapter_name
  config.vm.synced_folder './volumes', '/mnt/docker/volumes', create: true
  config.ssh.insert_key = false
  config.vm.provision 'shell', inline: '
    sudo systemctl daemon-reload &&
    sudo systemctl try-restart docker &&
    sudo usermod -aG docker vagrant', run: 'always'
end
