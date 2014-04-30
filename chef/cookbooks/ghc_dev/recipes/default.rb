template "/home/ubuntu/install_ghc.sh" do
  source "install_ghc.sh"
  owner "ubuntu"
  group "ubuntu"
  mode "755"
  variables ghc_version: node[:ghc_version]
end

template "/home/ubuntu/.bash_profile" do
  source "bash_profile.sh"
  owner "ubuntu"
  group "ubuntu"
  mode "644"
  variables ghc_version: node[:ghc_version]
end

package "haskell-platform" do
  action :install
end

package "git" do
  action :install
end

package "autoconf" do
  action :install
end

package "automake" do
  action :install
end

package "libtool" do
  action :install
end

package "make" do
  action :install
end

package "ncurses-dev" do
  action :install
end

package "g++" do
  action :install
end

package "llvm" do
  action :install
end
