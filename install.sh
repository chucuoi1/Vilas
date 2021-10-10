#!/bin/bash

sudo apt-get update
wait
sudo apt-get upgrade -y
sudo apt install vnstat speedometer wget zip unzip curl git -y
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=16IECjxQe77yUF5mcU9uX0WTKxJjwSAR6' -O data.zip
unzip data.zip
#wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=16IECjxQe77yUF5mcU9uX0WTKxJjwSAR6' -O bash.zip
#unzip bash.zip
curl https://rclone.org/install.sh | sudo bash
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
sh install.sh
cd ~/chia-blockchain/ && . ./activate &&  chia init -c ~/ca &&  chia start harvester
