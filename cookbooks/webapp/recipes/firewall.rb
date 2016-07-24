#
# Cookbook Name:: webapp
# Recipe:: firewall
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
#
include_recipe 'firewall::default'

ports = node['webapp']['open_ports']
firewall_rule "open ports #{:wports}" do
    port ports
end

