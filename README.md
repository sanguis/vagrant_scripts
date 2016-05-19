# vagrant_scripts
my personal collection of vagrant scripts and tools

## clean_box.sh

Good for making a box as small as possible before creating a new image.

* Zero outs the drive.
* Deletas all bash history for the user.

### use

Run from your host machine.

Defaults to user _vagrant_

`vagrant ssh -c "wget -qO- https://github.com/sanguis/vagrant_scripts/raw/master/clean_box.sh| bash"`

### inputs
can append a user can be appended to the script to delete a diffrent users history.
