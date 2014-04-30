TAG=<%= @ghc_version %>
CORES=`grep processor /proc/cpuinfo | wc -l`

git clone git://github.com/ghc/ghc.git ghc-src &&
cd ghc-src &&
git checkout $TAG
./sync-all --no-dph -r git://github.com/ghc get &&
./sync-all checkout $TAG &&
cabal update &&
cabal install cabal-install &&
/home/ubuntu/.cabal/bin/cabal install -j$CORES alex happy &&
perl boot && ./configure --prefix=/home/ubuntu/ghc/$TAG && make -j$CORES && make install
