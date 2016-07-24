#
# Cookbook Name:: webapp
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
include_recipe 'apt::default'
include_recipe 'webapp::firewall'
include_recipe 'webapp::web_user'
include_recipe 'webapp::web'
