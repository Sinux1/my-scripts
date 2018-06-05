#! /bin/bash
#Into repos
cd /etc/yum.repos.d/
#Add repo
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
#Update system
dnf update


#The following compares kernel to make sure they match
#The cut command cuts out everything piped to it occuring
#before the first hypen
com1=$(rpm -qa kernel |sort -V |tail -n 1 | cut --complement -d- -f1)
com2=$(uname -r)

if [ "$str1" = "$str2" ]; then
dnf install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms

dnf install VirtualBox-5.2

/usr/lib/virtualbox/vboxdrv.sh setup

usermod -a -G vboxusers $USER
else
echo "You need to reboot system, then run script again."
fi
