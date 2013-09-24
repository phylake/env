#!/bin/bash

cabal update &&
cabal install happy &&
cabal install alex &&
git clone git@github.com:ghc/ghc.git &&
cd ghc &&
./sync-all -r git://github.com/ghc get &&
perl boot &&
./configure &&
make -j4
