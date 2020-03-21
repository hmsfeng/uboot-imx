cmd_spl/u-boot-spl.lds := aarch64-linux-gnu-gcc -E -Wp,-MD,spl/.u-boot-spl.lds.d -D__KERNEL__ -D__UBOOT__  -DCONFIG_SPL_BUILD  -D__ARM__          -mstrict-align  -ffunction-sections -fdata-sections -fno-common -ffixed-r9     -fno-common -ffixed-x18 -pipe -march=armv8-a -mgeneral-regs-only -D__LINUX_ARM_ARCH__=8   -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h  -nostdinc -isystem /home/vmuser/imx8qxp/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/../lib/gcc/aarch64-linux-gnu/8.3.0/include -include ./include/u-boot/u-boot.lds.h -include ./include/config.h -DCPUDIR=arch/arm/cpu/armv8  -DIMAGE_MAX_SIZE="(192 * 1024)" -DIMAGE_TEXT_BASE=0x100000 -ansi -D__ASSEMBLY__ -x assembler-with-cpp -std=c99 -P -o spl/u-boot-spl.lds arch/arm/cpu/armv8/u-boot-spl.lds

source_spl/u-boot-spl.lds := arch/arm/cpu/armv8/u-boot-spl.lds

deps_spl/u-boot-spl.lds := \
    $(wildcard include/config/spl/bss/start/addr.h) \
    $(wildcard include/config/spl/bss/max/size.h) \
    $(wildcard include/config/recover/spl/data/section.h) \
  include/u-boot/u-boot.lds.h \
  include/config.h \
    $(wildcard include/config/imx/config.h) \
    $(wildcard include/config/boarddir.h) \
  include/config_defaults.h \
    $(wildcard include/config/defaults/h/.h) \
    $(wildcard include/config/bootm/linux.h) \
    $(wildcard include/config/bootm/netbsd.h) \
    $(wildcard include/config/bootm/plan9.h) \
    $(wildcard include/config/bootm/rtems.h) \
    $(wildcard include/config/bootm/vxworks.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/zlib.h) \
  include/config_uncmd_spl.h \
    $(wildcard include/config/uncmd/spl/h//.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/dm.h) \
    $(wildcard include/config/dm/serial.h) \
    $(wildcard include/config/dm/gpio.h) \
    $(wildcard include/config/dm/i2c.h) \
    $(wildcard include/config/dm/spi.h) \
    $(wildcard include/config/dm/spi/flash.h) \
    $(wildcard include/config/dm/usb.h) \
    $(wildcard include/config/dm/warn.h) \
    $(wildcard include/config/dm/stdio.h) \
  include/configs/imx8qxp_mek.h \
    $(wildcard include/config/parse/container.h) \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/u/boot/use/sector.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/u/boot/sector.h) \
    $(wildcard include/config/sys/spi/u/boot/offs.h) \
    $(wildcard include/config/sys/uboot/base.h) \
    $(wildcard include/config/sys/mmcsd/fs/boot/partition.h) \
    $(wildcard include/config/spl/ldscript.h) \
    $(wildcard include/config/sys/malloc/f/len.h) \
    $(wildcard include/config/sys/spl/malloc/start.h) \
    $(wildcard include/config/spl/stack.h) \
    $(wildcard include/config/sys/spl/malloc/size.h) \
    $(wildcard include/config/serial/lpuart/base.h) \
    $(wildcard include/config/sys/icache/off.h) \
    $(wildcard include/config/sys/dcache/off.h) \
    $(wildcard include/config/malloc/f/addr.h) \
    $(wildcard include/config/spl/raw/image/arm/trusted/firmware.h) \
    $(wildcard include/config/spl/abort/on/raw/image.h) \
    $(wildcard include/config/of/embed.h) \
    $(wildcard include/config/remake/elf.h) \
    $(wildcard include/config/board/early/init/f.h) \
    $(wildcard include/config/arch/misc/init.h) \
    $(wildcard include/config/cmd/read.h) \
    $(wildcard include/config/of/board/setup.h) \
    $(wildcard include/config/cmd/exportenv.h) \
    $(wildcard include/config/cmd/importenv.h) \
    $(wildcard include/config/cmd/imls.h) \
    $(wildcard include/config/cmd/crc32.h) \
    $(wildcard include/config/fsl/esdhc.h) \
    $(wildcard include/config/fsl/usdhc.h) \
    $(wildcard include/config/sys/fsl/esdhc/addr.h) \
    $(wildcard include/config/support/emmc/boot.h) \
    $(wildcard include/config/env/overwrite.h) \
    $(wildcard include/config/pcie/imx.h) \
    $(wildcard include/config/cmd/pci.h) \
    $(wildcard include/config/pci/scan/show.h) \
    $(wildcard include/config/env/vars/uboot/runtime/config.h) \
    $(wildcard include/config/ahab/boot.h) \
    $(wildcard include/config/mfg/env/settings.h) \
    $(wildcard include/config/mfg/env/settings/default.h) \
    $(wildcard include/config/extra/env/settings.h) \
    $(wildcard include/config/sys/mmc/env/dev.h) \
    $(wildcard include/config/sys/mmc/img/load/part.h) \
    $(wildcard include/config/mmcroot.h) \
    $(wildcard include/config/bootcommand.h) \
    $(wildcard include/config/loadaddr.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/qspi/boot.h) \
    $(wildcard include/config/env/offset.h) \
    $(wildcard include/config/env/sect/size.h) \
    $(wildcard include/config/env/spi/bus.h) \
    $(wildcard include/config/sf/default/bus.h) \
    $(wildcard include/config/env/spi/cs.h) \
    $(wildcard include/config/sf/default/cs.h) \
    $(wildcard include/config/env/spi/mode.h) \
    $(wildcard include/config/sf/default/mode.h) \
    $(wildcard include/config/env/spi/max/hz.h) \
    $(wildcard include/config/sf/default/speed.h) \
    $(wildcard include/config/sys/mmc/env/part.h) \
    $(wildcard include/config/sys/fsl/usdhc/num.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/sys/sdram/base.h) \
    $(wildcard include/config/sys/memtest/start.h) \
    $(wildcard include/config/sys/memtest/end.h) \
    $(wildcard include/config/baudrate.h) \
    $(wildcard include/config/sys/prompt/hush/ps2.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/sys/bargsize.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/sys/prompt.h) \
    $(wildcard include/config/dm/pca953x.h) \
    $(wildcard include/config/pca953x.h) \
    $(wildcard include/config/cmd/pca953x.h) \
    $(wildcard include/config/cmd/pca953x/info.h) \
    $(wildcard include/config/fsl/fspi.h) \
    $(wildcard include/config/sys/fsl/fspi/ahb.h) \
    $(wildcard include/config/serial/tag.h) \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/usb/storage.h) \
    $(wildcard include/config/usbd/hs.h) \
    $(wildcard include/config/cmd/usb/mass/storage.h) \
    $(wildcard include/config/usb/gadget/mass/storage.h) \
    $(wildcard include/config/usb/function/mass/storage.h) \
    $(wildcard include/config/usb/max/controller/count.h) \
    $(wildcard include/config/usb/ehci/hcd.h) \
    $(wildcard include/config/usb/host/ether.h) \
    $(wildcard include/config/usb/ether/asix.h) \
    $(wildcard include/config/mxc/usb/portsc.h) \
    $(wildcard include/config/fec/enet/dev.h) \
    $(wildcard include/config/fec/mxc/phyaddr.h) \
    $(wildcard include/config/ethprime.h) \
    $(wildcard include/config/fec/xcv/type.h) \
    $(wildcard include/config/lib/rand.h) \
    $(wildcard include/config/net/random/ethaddr.h) \
    $(wildcard include/config/video.h) \
    $(wildcard include/config/video/imxdpuv1.h) \
    $(wildcard include/config/video/bmp/rle8.h) \
    $(wildcard include/config/splash/screen.h) \
    $(wildcard include/config/splash/screen/align.h) \
    $(wildcard include/config/bmp/16bpp.h) \
    $(wildcard include/config/video/logo.h) \
    $(wildcard include/config/video/bmp/logo.h) \
    $(wildcard include/config/imx/video/skip.h) \
    $(wildcard include/config/of/system/setup.h) \
    $(wildcard include/config/android/support.h) \
    $(wildcard include/config/android/auto/support.h) \
  include/linux/sizes.h \
  include/linux/const.h \
  arch/arm/include/asm/arch/imx-regs.h \
    $(wildcard include/config/imx8qxp.h) \
    $(wildcard include/config/imx8qm.h) \
    $(wildcard include/config/sys/fsl/sec/addr.h) \
  include/configs/imx_env.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/usb/port/auto.h) \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/h/.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/cpu/pxa27x.h) \
    $(wildcard include/config/cpu/monahans.h) \
    $(wildcard include/config/cpu/pxa25x.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/config_fallbacks.h \
    $(wildcard include/config/fallbacks/h.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/cmd/kgdb.h) \
    $(wildcard include/config/sys/i2c.h) \

spl/u-boot-spl.lds: $(deps_spl/u-boot-spl.lds)

$(deps_spl/u-boot-spl.lds):
