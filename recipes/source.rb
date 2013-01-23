

execute 'download nodejs' do
  command "wget http://nodejs.org/dist/#{node[nodejs][version]}/node-#{node[nodejs][version]}.tar.gz"
end

execute 'unpack nodejs' do
  command "tar xvzf node-#{node[nodejs][version]}.tar.gz"
end

execute 'make nodejs' do
  cwd "/node-#{node[nodejs][version]}"
  command './configure'
  command 'make'
  command 'sudo make install'
end

