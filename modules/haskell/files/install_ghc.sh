#!/bin/bash

cabal update &&
cabal install cabal-install &&
cabal install -j16 alex happy &&
# git clone git@github.com:ghc/ghc.git &&
git clone git://git.haskell.org/ghc.git &&
cd ghc &&
./sync-all --testsuite --no-dph get &&
cp mk/build.mk.sample mk/build.mk &&
perl boot &&
./configure &&
make -j16 &&
make install DESTDIR=/tmp/ghc-install
