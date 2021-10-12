#!/bin/bash

mount /dev/$1 /mnt

rm -fR /mnt/grub

grub-install --boot-directory=/mnt /dev/$1

umount /dev/$1

