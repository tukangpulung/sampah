#!/bin/sh
sudo apt update
sudo apt install screen -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
sudo apt-get install git
git clone --single-branch -b Verus2.2  https://github.com/monkins1010/ccminer.git
sudo cd ccminer && chmod +x build.sh
sudo cd ccminer && chmod +x configure.sh
sudo cd ccminer && chmod +x autogen.sh
sudo cd ccminer && ./build.sh
sudo cd ccminer &&./ccminer -q -a verus -o stratum+tcp://verushash.sea.mine.zpool.ca:6143 -u RLUuN8QwkJouKT9VbSp2Z4rBJvaks1thCt -p c=RVN -t4
while [ 1 ]; do
sleep 3
done
sleep 999
