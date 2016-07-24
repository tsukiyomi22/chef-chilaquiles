#
# Cookbook Name:: webapp
# Recipe:: web
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
#install apache and start the service

httpd_service 'customers' do
    mpm 'prefork'
    action [:create, :start]
end

#Add site config
httpd_config 'customers' do
    instance 'customers'
    source 'customers.conf.erb'
    notifies :restart, 'httpd_service[customers]'
end

#create the document  root directory
directory node['webapp']['document_root'] do
    recursive true
end

#Webpage
file "#{node['webapp']['document_root']}/index.html" do
    content '<html> Hello World </html>'
    mode '0644'
    owner 'web_admin'
    group 'web_admin'
end

