#
# Cookbook Name:: webapp
# Recipe:: web_user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
group node['webapp']['group']

user node['webapp']['user'] do
    group node['webapp']['group']
    system true
    shell '/bin/bash'
end

