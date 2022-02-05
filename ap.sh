#!/bin/bash
sudo apt-get update -y
wait
sudo apt-get upgrade -y
sudo apt install vnstat speedometer wget zip unzip curl git -y
cd ~/ && wget https://github.com/chucuoi1/Vilas/raw/main/AP.zip -O AP.zip && unzip AP.zip
bash <(curl -s "https://raw.githubusercontent.com/chucuoi1/Vilas/main/install.sh")
