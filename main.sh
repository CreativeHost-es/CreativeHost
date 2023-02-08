if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
   exit 1
fi

apt install sudo -y


echo "#######################################################################################"
echo "#"
echo "#                                  CREATIVEHOST.ES SCRIPTS"
echo "#                                https://discord.gg/GKev8uZQBz"
echo "#                           Copyright (C) 2022 - 2023, CREATIVEHOST.ES"
echo "#"
echo "#"
echo "#######################################################################################"
echo ""
echo "* [0] Install Minecraft Server Files"
echo "* [1] Install Warp to enable Ipv4 on Ipv6 only"
echo "* [2] Download Playit files to make tunnels to V4 & V6"
echo "* [3] Install PufferPanel"
echo "* [4] Install WebPage"
echo "* [5] Install CRDP/XRDP"
echo "* [6] Install Basic Packages"
echo "* [7] Install Pterodactyl Panel"
echo "* [8] Exit"

read -p "Enter Input (0-7): " input

case $input in

    0)
    apt update
    wget -N https://raw.githubusercontent.com/CreativeHost-es/CreativeHost/main/scripts/minecraftscript/install.sh && bash install.sh;;
    1)
    apt update
    apt install curl -y
    wget -N https://raw.githubusercontent.com/CreativeHost-es/CreativeHost/main/scripts/warpv6/install.sh && bash install.sh;;
    2)
    apt update
    apt install wget -y
    mkdir playit && cd playit
    wget https://raw.githubusercontent.com/CreativeHost-es/CreativeHost/main/playit-0.9.3
    mv playit-0.9.3 playit
    chmod 755 playit
    echo "PLAYIT INSTALLATION COMPLETE! proceeding in 3s"
    sleep 3
    ./playit;;
    3)
    apt update && apt install curl -y
    curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
    sudo apt-get install pufferpanel
    sudo systemctl enable pufferpanel
    sudo pufferpanel user add
    sudo systemctl enable --now pufferpanel;;
    4)
    wget -N https://raw.githubusercontent.com/CreativeHost-es/CreativeHost/main/scripts/websitescript/install.sh && bash install.sh;;
    5)
    wget -N https://raw.githubusercontent.com/CreativeHost-es/CreativeHost/main/scripts/crdpscript/install.sh && bash install.sh;;
    6)
    apt install git neofetch sudo
    echo "##############################"
    echo ""
    echo "Installed git and neofetch"
    echo ""
    echo "##############################";;
    7)
    wget -N https://raw.githubusercontent.com/CreativeHost-es/CreativeHost/main/scripts/ptero/install.sh && bash install.sh;;
    8) echo "Exit" && exit;;
esac
