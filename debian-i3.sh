echo ####################
echo # Install packages #
echo ####################
sudo apt install i3 i3blocks lightdm x11-xserver-utils -y
sudo apt install pulseaudio nm-tray fonts-font-awesome -y
sudo apt install curl git feh -y
sudo apt install vim xfe xfe-themes -y

echo ###########################
echo # Install Thorium browser #
echo ###########################
wget https://dl.thorium.rocks/debian/dists/stable/thorium.list
sudo mv thorium.list /etc/apt/sources.list.d/
sudo apt update -y
sudo apt install thorium-browser -y
