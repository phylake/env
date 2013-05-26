source .bashrc

# use $HOME's rvm even if a system rvm exists
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# if there's still no rvm in the PATH assume it doesn't exist and install it
[[ ! `which rvm` ]] && curl -L -s https://get.rvm.io | bash -s stable --autolibs=enabled --ruby=1.9.3

[[ ! -e "$HOME/.ssh/id_rsa" && -e "/vagrant/id_rsa" ]] && mv /vagrant/id_rsa $HOME/.ssh/ && chmod 400 $HOME/.ssh/id_rsa
[[ ! -e "$HOME/.ssh/id_rsa.pub" && -e "/vagrant/id_rsa.pub" ]] && mv /vagrant/id_rsa.pub $HOME/.ssh/

cd /vagrant
