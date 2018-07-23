#!/bin/bash

ATH9_KERNEL_OFFSET=0x006D0000
ATH9_ROOTFS_OFFSET=0x01000000
ATH9_NEW_KERNAL=./bin/targets/ar71xx/generic/lede-ar71xx-generic-vmlinux.bin
ATH9_NEW_ROOTFS=./bin/targets/ar71xx/generic/lede-ar71xx-generic-root.squashfs
ATH9_BINARY_IMAGE=./bin/targets/ar71xx/generic/lede-ar71xx-generic-image.bin

#Add new kernal
offset=$(ATH9_KERNEL_OFFSET)
length=$( wc -c < ATH9_NEW_KERNEL)
dd bs=1 if=ATH9_NEW_KERNEL of=ATH9_BINARY_IMAGE count=$length seek= $offset conv=notrunc

#Add new root system
offset=$(ATH9_ROOTFS_OFFSET)
length=$( wc -c < ATH9_NEW_ROOTFS)
dd bs=1 if=ATH9_NEW_ROOTFS of=ATH9_BINARY_IMAGE count=$length seek= $offset conv=notrunc

