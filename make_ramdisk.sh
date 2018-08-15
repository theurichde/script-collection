#!/bin/sh
sudo mke2fs /dev/ram0
sudo mount /dev/ram0 /media/ramdisk
sudo chown theurich /media/ramdisk
sudo chmod u+rwx /media/ramdisk
