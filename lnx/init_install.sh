#!/bin/bash
sudo apt install i3 ubuntu-drivers-common mesa-utils mesa-utils-extra gnupg numlockx xautolock scrot xorg xserver-xorg wget unzip wpasupplicant neovim iptables ip6tables
sudo apt-get install gnome-screensaver parcellite volti network-manager-gnome xbacklight alsa-utils pulseaudio i3lock microcode.ctl intel-microcode
cp i3.config ~/.config/i3/config
cp i3status ~/.config/i3/config

# Retro term
echo "deb http://ppa.launchpad.net/vantuz/cool-retro-term/ubuntu bionic main" | sudo tee -a /etc/apt/source.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BDB05D75
sudo apt update
sudo apt install cool-retro-term

# Cool font
wget "https://use.fontawesome.com/releases/v5.0.13/fontawesome-free-5.0.13.zip"
unzip fontawesome-free-5.0.13.zip
sudo cp fontawesome-free-5.0.13/use-on-desktop/* /usr/local/share/fonts/
fc-cache -f -v
#the next command help see the name to use
#here Font Awesome 5 Free
fc-list | grep -i "awe"

# Security
sudo cp iptables/00-iptable-flush /usr/lib/networkd-dispatcher/routable.d/
sudo cp iptables/50-iptable-mdns /usr/lib/networkd-dispatcher/routable.d/
sudo chmod +x /usr/lib/networkd-dispatcher/routable.d/00-iptable-flush
sudo chmod +x /usr/lib/networkd-dispatcher/routable.d/50-iptable-mdns

# My init profile
cp xinitrc ~/.xinitrc
