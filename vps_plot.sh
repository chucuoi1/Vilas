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
sleep 3
bash /root/bash.sh
sleep 10
# cd ~/
# screen -S Plot1 && ./chia-plotter/build/chia_plot -w -t /mnt/ramdisk1/ -d /mnt/Final/ -2 /mnt/ramdisk1/ -n -1 -r 90 -f 8c9db573edff069681e522055e35ded4f289f556de80dd8b96d2b6e403757faf6edb819b32c8ac9601df03c691ec4659 -c xch16ndcj6hew6a69tcn6h7dtrj744gd60mzp78hl70lr2047lnrnzdq7z8s5c
 # ; screen -S Plot2 && ./chia-plotter/build/chia_plot -w -t /mnt/ramdisk2/ -d /mnt/Final/ -2 /mnt/ramdisk2/ -n -1 -r 90 -f 8c9db573edff069681e522055e35ded4f289f556de80dd8b96d2b6e403757faf6edb819b32c8ac9601df03c691ec4659 -c xch16ndcj6hew6a69tcn6h7dtrj744gd60mzp78hl70lr2047lnrnzdq7z8s5c
 