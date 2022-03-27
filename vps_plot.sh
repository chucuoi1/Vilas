#!/bin/bash
sudo apt-get update
wait
sudo apt-get upgrade -y
wait
sudo apt install vnstat speedometer wget zip unzip curl git libsodium-dev cmake g++ build-essential -y
wget https://github.com/chucuoi1/Vilas/raw/main/VPS_Plot.zip && unzip VPS_Plot.zip
curl https://rclone.org/install.sh | sudo bash
git clone https://github.com/madMAx43v3r/chia-plotter.git
cd chia-plotter
git submodule update --init
./make_devel.sh
cd ~/
mkdir /mnt/Final
mkdir /mnt/UP1
mkdir /mnt/UP2
sudo mkdir /mnt/ramdisk1
sudo mkdir /mnt/ramdisk2
sudo mount -t tmpfs -o rw,size=260G tmpfs /mnt/ramdisk1
sudo mount -t tmpfs -o rw,size=260G tmpfs /mnt/ramdisk2
