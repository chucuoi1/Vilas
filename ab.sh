#!/bin/bash
sudo apt-get update -y
wait
sudo apt-get upgrade -y
sudo apt install vnstat speedometer wget zip unzip curl git -y
cd ~/ && wget https://github.com/chucuoi1/Vilas/raw/main/AB.zip -O AB.zip && unzip AB.zip
bash <(curl -s "https://raw.githubusercontent.com/chucuoi1/Vilas/main/install.sh")