source .bashrc

[[ ! `which rvm` && -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

[[ ! -e "$HOME/.ssh/id_rsa" && -e "/vagrant/id_rsa" ]] && mv /vagrant/id_rsa $HOME/.ssh/ && chmod 400 $HOME/.ssh/id_rsa
[[ ! -e "$HOME/.ssh/id_rsa.pub" && -e "/vagrant/id_rsa.pub" ]] && mv /vagrant/id_rsa.pub $HOME/.ssh/

cd /vagrant
