case node['nodejs']['install_type']
when 'package'
  execute 'sudo apt-get install python-software-properties python g++ make'
  execute 'sudo add-apt-repository ppa:chris-lea/node.js'
  execute 'sudo apt-get update'
  execute 'sudo apt-get install -y nodejs npm'
when 'source'
  include_recipe 'nodejs::source'
else
  Chef::Log.error("install_type must be package or source")
  exit(1)
end