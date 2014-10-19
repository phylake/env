#!/bin/bash

cabal update &&
cabal install cabal-install

sudo apt-get -y install haskell-platform git autoconf automake libtool make libgmp-dev ncurses-dev g++ llvm

cabal install -j16 alex happy &&
# git clone git://github.com/ghc/ghc.git &&
git clone git://git.haskell.org/ghc.git &&
cd ghc &&
./sync-all --no-dph get &&
#cp mk/build.mk.sample mk/build.mk &&
perl boot &&
./configure --prefix=/home/b/ghc/7.8 &&
make -j16 &&
make install # no DESTDIR as it is for packaging not installing
