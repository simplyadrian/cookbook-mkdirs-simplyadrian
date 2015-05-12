#
# Cookbook Name:: mkdirs-simplyadrian
# Recipe:: default
#
# Copyright 2014, simplyadrian
#
# All rights reserved - Do Not Redistribute
#

node['mkdirs-simplyadrian']['path'].each do |dir_cfg|
  directory dir_cfg do
    owner node['mkdirs-simplyadrian']['owner']
    group node['mkdirs-simplyadrian']['group']
    mode node['mkdirs-simplyadrian']['mode']
    action :create
  end
end