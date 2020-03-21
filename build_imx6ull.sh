#!/bin/sh
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- distclean
#make mx6ull_zdyz_emmc_defconfig
make menuconfig
make -j8
