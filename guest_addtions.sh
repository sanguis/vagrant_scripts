#!/bin/bash

# run with 
# wget -qO- https://gist.githubusercontent.com/sanguis/ef96dcdebf5e2576807a8c6d3ec5a071/raw/a402f6ca97350e35a25782ce1fad627a003f5b51/guest_addtions.sh |sudo bash

if [ -z $1 ]
then
  v=`wget -qO- http://download.virtualbox.org/virtualbox/LATEST.TXT`
else
  v=$1
fi

echo "Installing VBoxGuestAdditions version $v."

mkdir /media/VBoxGuestAdditions
mount -o loop,ro VBoxGuestAdditions_$v.iso /media/VBoxGuestAdditions
sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_$v.iso
umount /media/VBoxGuestAdditions
rmdir /media/VBoxGuestAdditions
