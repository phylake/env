#!/bin/bash

cabal update &&
cabal install alex happy &&
git clone git@github.com:ghc/ghc.git &&
cd ghc &&
./sync-all -r git://github.com/ghc get &&
cp mk/build.mk.sample mk/build.mk &&
perl boot &&
./configure &&
make -j8
