#
# Cookbook Name:: capistrano-static
# Recipe:: default
#
# Copyright (C) 2014
#
#
#

include_recipe 'apt::default'
include_recipe 'capistrano-static::user'
include_recipe 'capistrano-static::ssh'
include_recipe 'apache2::default'
include_recipe 'capistrano-static::chown'
include_recipe 'capistrano-static::app'
