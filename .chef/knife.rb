# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "duytran"
client_key               "#{current_dir}/duytran.pem"
validation_client_name   "dustinchef-validator"
validation_key           "#{current_dir}/dustinchef-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/dustinchef"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]