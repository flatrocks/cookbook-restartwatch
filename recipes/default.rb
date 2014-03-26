#
# Cookbook Name:: logwatch_restart
# Recipe:: default
#
# Copyright 2014, Roll No Rocks
#

include_recipe 'logwatch'

cookbook_file '/etc/logwatch/scripts/services/restart' do
  owner 'root'
  group 'root'
  mode 0755
end

cookbook_file '/etc/logwatch/conf/services/restart.conf' do
  owner 'root'
  group 'root'
  mode 0644
end

cookbook_file '/etc/logwatch/conf/logfiles/restart_logs.conf' do
  owner 'root'
  group 'root'
  mode 0644
end