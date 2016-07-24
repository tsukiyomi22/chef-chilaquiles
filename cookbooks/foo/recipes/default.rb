#
# Cookbook Name:: foo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
version = node['version']

if version == "2"then
    puts "you are running the correct version"
else
    puts "please upgrade"
end
