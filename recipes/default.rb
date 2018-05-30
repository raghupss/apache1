#
# Cookbook Name:: myapache
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

package 'apache2' do
  action :install
end

service 'apache2' do
  action :enable
  action :start
end

cookbook_file '/var/www/index.html' do
  source 'index.html'
  mode '0644'
end
