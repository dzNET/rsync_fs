#!/bin/bash
CFS=/dev/sda1
NFS=/dev/sdb1
CDIR=/mnt/old
NDIR=/mnt/new 
sudo mkdir $CDIR $NDIR
sudo mount $CFS $CDIR
sudo mount $NFS $NDIR
sudo rsync -xav --progress --exclude-from=exclude $CDIR $NDIR
sudo umount $CFS $NFS
sudo rm -r $CDIR $NDIR
