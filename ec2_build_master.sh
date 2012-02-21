yes | sudo apt-get update
yes | sudo apt-get upgrade
yes | sudo apt-get install make autoconf g++ git libtool uuid-dev libz-dev

echo "gem: --no-rdoc --no-ri" > .gemrc

bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
source .profile
rvm install 1.9.2

gem install puppet
