# haskell platform for 32-bit lucid
sudo apt-get update

yes | sudo apt-get install build-essential
yes | sudo apt-get install libqt4-opengl-dev
yes | sudo apt-get install libglut3-dev
yes | sudo apt-get install libgmp3-dev
yes | sudo apt-get install curl

curl http://www.haskell.org/ghc/dist/7.4.2/ghc-7.4.2-i386-unknown-linux.tar.bz2 -o ghc-7.4.2-i386-unknown-linux.tar.bz2
curl http://lambda.haskell.org/platform/download/2012.4.0.0/haskell-platform-2012.4.0.0.tar.gz -o haskell-platform-2012.4.0.0.tar.gz
tar -xzf haskell-platform-2012.4.0.0.tar.gz
tar -xjf ghc-7.4.2-i386-unknown-linux.tar.bz2

cd ghc-7.4.2
sudo ./configure && sudo make install

cd ../haskell-platform-2012.4.0.0
sudo ./configure && sudo make install

cabal update
cabal install cabal-install
