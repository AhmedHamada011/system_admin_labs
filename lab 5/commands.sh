#!/usr/bin/env bash


#using dd command create empty file with size of 20MB (hint: count 40000, bs=512)
dd if=/dev/zero of=/tmp/disk.img bs=512 count=40000

#attach the file as loop device using losetup command (hint: use losetup -f to allocate free device)
losetup -f	
losetup -P /dev/loop0 /tmp/disk.img

#using fdisk command, create new partition into the loop device (`fdisk /dev/loop<??>` where <??> is the device number)
sudo fdisk /dev/loop0

#format the new partition using mkfs.ext4 command 
sudo mkfs.ext4 /dev/loop0p1

#mount the formatted partition into /mnt directory 
sudo mount /dev/loop0p1 /mnt

#create some files inside the mounted /mnt directory
sudo touch file1.txt

#unmount /mnt directory using umount command
sudo umount /dev/loop0p1

#using `apt` command, search and install `gparted` program
sudo apt search gparted
sudo apt install gparted

#navigate and use gparted to detect the the new partition.
