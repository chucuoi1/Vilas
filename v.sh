#!/bin/bash
sudo apt-get update -y
wait
sudo apt-get upgrade -y
sudo apt install vnstat speedometer wget zip unzip curl git -y
cd ~/ && wget https://github.com/chucuoi1/Vilas/raw/main/V.zip -O V.zip && unzip V.zip
bash <(curl -s "https://raw.githubusercontenV.com/chucuoi1/Vilas/main/install.sh")
