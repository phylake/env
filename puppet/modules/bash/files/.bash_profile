alias ll="ls -alh"
alias edit_network="sudo vim /etc/network/interfaces"
alias restart_network="sudo /etc/init.d/networking restart"

[[ -e .bashrc ]] && source .bashrc

[[ -d ~/.cabal/bin ]] && PATH=~/.cabal/bin:$PATH

[[ -d ~/bin ]] && PATH=~/bin:$PATH

[[ -d ~/ghc/7.8.2/bin ]] && PATH=~/ghc/7.8.2/bin:$PATH

# use $HOME's rvm even if a system rvm exists
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

