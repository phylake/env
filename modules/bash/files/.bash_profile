#!/bin/bash
cd
source .bashrc
source cabal_install

[[ ! `which rvm` && -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

cd /vagrant
