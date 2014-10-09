# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'chef/ubuntu-14.04'

  config.omnibus.chef_version = :latest

  config.vm.define 'static' do |app|
    app.vm.network 'private_network', ip: '172.16.30.11'

    app.vm.provision 'chef_solo' do |chef|
      chef.data_bags_path = 'data_bags'

      chef.add_recipe 'chef-solo-search'
      chef.add_recipe 'capistrano-static::default'
    end
  end
end
