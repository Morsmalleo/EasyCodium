#!/bin/bash

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "This script must be ran as root"
	exit 1
fi

echo ""
echo " Getting VSCodium from GitHub"
echo ""
wget https://github.com/VSCodium/vscodium/releases/download/1.55.1/codium_1.55.1-1618015952_amd64.deb
sleep 1

echo ""
echo " Installing VSCodium "
echo ""
mv codium_1.55.1-1618015952_amd64.deb codium.deb
dpkg -i codium.deb
rm -rf codium.deb 
echo ""
echo " VSCodium has been installed "
echo ""
exit 0
fi
