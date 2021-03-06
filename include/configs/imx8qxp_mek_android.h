/*
 * Copyright 2017 NXP
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

#ifndef IMX8QXP_MEK_ANDROID_H
#define IMX8QXP_MEK_ANDROID_H

#define CONFIG_USBD_HS

#define CONFIG_BCB_SUPPORT
#define CONFIG_CMD_READ
#define CONFIG_USB_GADGET_VBUS_DRAW	2

#ifdef CONFIG_IMX_TRUSTY_OS
#define NS_ARCH_ARM64 1
#endif

#define CONFIG_ANDROID_AB_SUPPORT
#define CONFIG_AVB_SUPPORT
#define CONFIG_SUPPORT_EMMC_RPMB
#ifdef CONFIG_ANDROID_AB_SUPPORT
#define CONFIG_SYSTEM_RAMDISK_SUPPORT
#endif
#define CONFIG_AVB_FUSE_BANK_SIZEW 0
#define CONFIG_AVB_FUSE_BANK_START 0
#define CONFIG_AVB_FUSE_BANK_END 0
#define CONFIG_FASTBOOT_LOCK
#define FSL_FASTBOOT_FB_DEV "mmc"

#define KEYSLOT_HWPARTITION_ID   2
#define KEYSLOT_BLKS             0x3FFF

#ifdef CONFIG_SYS_MALLOC_LEN
#undef CONFIG_SYS_MALLOC_LEN
#define CONFIG_SYS_MALLOC_LEN           (90 * SZ_1M)
#endif

#define CONFIG_FASTBOOT_USB_DEV 1
#define CONFIG_ANDROID_RECOVERY

#define CONFIG_CMD_BOOTA
#define CONFIG_SUPPORT_RAW_INITRD
#define CONFIG_SERIAL_TAG

#undef CONFIG_EXTRA_ENV_SETTINGS
#undef CONFIG_BOOTCOMMAND

#define CONFIG_EXTRA_ENV_SETTINGS					\
	"splashpos=m,m\0"	  \
	"fdt_high=0xffffffffffffffff\0"	  \
	"initrd_high=0xffffffffffffffff\0" \
	"panel=NULL\0" \

#ifdef CONFIG_IMX_TRUSTY_OS
#define AVB_RPMB

#ifdef CONFIG_SPL_BUILD
#undef CONFIG_BLK
#define CONFIG_FSL_CAAM_KB
#define CONFIG_SPL_CRYPTO_SUPPORT
#define CONFIG_SYS_FSL_SEC_LE
#endif
#endif

#define AVB_AB_I_UNDERSTAND_LIBAVB_AB_IS_DEPRECATED

#endif /* IMX8QXP_MEK_ANDROID_H */
