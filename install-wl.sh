#! /bin/bash
#Broadcom-wl for Fedora 28

#Update system
dnf update
#Install dependencies
dnf install -y kernel-devel
#Non-Free repository
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Install driver
dnf install -y broadcom-wl

#At this point should really reboot now
echo "Reboot"
