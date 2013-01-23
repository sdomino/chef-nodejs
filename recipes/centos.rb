case node['nodejs']['install_type']
when 'package'
  # nothing yet
when 'source'
  include_recipe 'nodejs::source'
else
  Chef::Log.error("install_type must be package or source")
  exit(1)
end