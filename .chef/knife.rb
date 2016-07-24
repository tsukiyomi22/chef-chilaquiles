# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ironkidd"
client_key               "#{current_dir}/ironkidd.pem"
chef_server_url          "https://masterchef/organizations/ironlab2"
#chef_server_url           "https://201.174.233.20:65080/organizations/ironlab2"
cookbook_path            ["#{current_dir}/../cookbooks"]
