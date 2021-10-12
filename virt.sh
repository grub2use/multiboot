#!/bin/bash

ARGs="-enable-kvm -rtc base=localtime -vga std"
ARGs="${ARGs} -drive file=/dev/$1,readonly,cache=none,format=raw,if=virtio"
ARGs="${ARGs} -m $2G"

qemu-system-x86_64 $ARGs

