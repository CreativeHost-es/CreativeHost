if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A root User" 1>&2
   exit 1
fi

echo "#######################################################################################"
echo "#"
echo "#                                  CREATIVEHOST.ES SCRIPTS"
echo "#"
echo "#                           Copyright (C) 2022 - 2023, CREATIVEHOST.ES"
echo "#"
echo "#"
echo "#######################################################################################"
echo ""
echo "* [0] Install Updates Ubuntu"
echo "* [1] Install Warp to enable Ipv4 on Ipv6 only"
echo "* [2] Get our Discord Now"
echo "* [3] Exit"

read -p "Enter Input (1-2): " input

case $input in
     
    0)
    apt update && apt upgrade -y
    1)
    apt update
    apt install curl -y
    wget -N https://raw.githubusercontent.com/Dectectable/creativehost/main/scripts/warpv6/install.sh && bash install.sh;;
    2)
    echo "#######################################################################################"
    echo "#"
    echo "#                                  https://discord.gg/GKev8uZQBz"
    echo "#"
    echo "#                           Copyright (C) 2022 - 2023, CREATIVEHOST.ES"
    echo "#"
    echo "#"
    echo "#######################################################################################"
    3) echo "Exit" && exit;;
esac
