#!/usr/bash

# Cleans a box in prep for creating a new box file. reduces cruft. 
# may take a while to run.
# Adapted from https://scotch.io/tutorials/how-to-create-a-vagrant-base-box-from-an-existing-one
# run with:
# `vagrant ssh -c "wget -qO- https://github.com/sanguis/vagrant_scripts/raw/master/clean_box.sh| bash"`

 # Remove APT cache
 sudo apt-get clean

 # Then, “zero out” the drive (this is for Ubuntu):

 sudo dd if=/dev/zero of=/EMPTY bs=1M
 sudo rm -f /EMPTY

 # Clear the Bash History and exit the VM:

sudo -s cat /dev/null > /home/vagrant/.bash_history && history -c && exit
