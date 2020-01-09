#!/bin/sh
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- distclean
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- mx6ull_zdyz_emmc_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j8
