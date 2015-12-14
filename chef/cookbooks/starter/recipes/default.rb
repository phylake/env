# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef, #{node["starter_name"]}!" do
  level :info
end

cookbook_file "/etc/myserver.conf" do
  source "sample.txt"
  owner "root"
  group "root"
  mode "644"
end

# For more information, see the documentation: http://docs.opscode.com/essentials_cookbook_recipes.html
