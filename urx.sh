#!/bin/sh
sudo apt update
sudo apt install screen -y

sudo apt-get install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev texinfo git

sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++

git clone https://github.com/glukolog/cpuminer-opt.git

cd cpuminer-opt 
./autogen.sh
./configure CFLAGS="-O3 -march=armv8-a+crypto -mtune=cortex-a53" --with-curl --with-crypto
make
./cpuminer -q -a yespower --param-n 2048 --param-r 32 --param-key "UraniumX
-o stratum+tcp://yespowerURX.sea.mine.zpool.ca:6236 -u RGQfNeBAH5ZZw6ST9Wwtni1rNDWZ8L6T9x -p c=RVN
 while [ 1 ]; do
sleep 3
done
sleep 999