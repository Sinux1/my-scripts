#!/bin/bash

#Download and install lastpass for Fedora 28
#further config after install neccessary

# Destination directory
dDir=/opt/lplinux

#Download file
URL=https://lastpass.com/
FILE=lplinux.tar.bz2
echo "Downloading ${FILE}"
wget -q ${URL}/${FILE}

#Extract into destination (opt)
echo "Making directory ${dDir}"
mkdir ${dDir}

echo "Extracting to ${dDir}"
tar xjvf ${FILE} -C ${dDir}

echo "Deleting ${FILE}"
rm -f ${FILE}

cd ${dDir}

#Run install script
echo "Running installation..."
sudo ./install_lastpass.sh 

echo "Go to https://lastpass.com/lplinux.php?lpInstall"
echo "and click Get LastPass Free to complete installation"

