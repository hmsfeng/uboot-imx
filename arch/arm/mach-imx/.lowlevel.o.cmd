cmd_arch/arm/mach-imx/lowlevel.o := aarch64-linux-gnu-gcc -Wp,-MD,arch/arm/mach-imx/.lowlevel.o.d  -nostdinc -isystem /home/vmuser/imx8qxp/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/../lib/gcc/aarch64-linux-gnu/8.3.0/include -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -fno-PIE -g -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe -march=armv8-a -mgeneral-regs-only -D__LINUX_ARM_ARCH__=8   -c -o arch/arm/mach-imx/lowlevel.o arch/arm/mach-imx/lowlevel.S

source_arch/arm/mach-imx/lowlevel.o := arch/arm/mach-imx/lowlevel.S

deps_arch/arm/mach-imx/lowlevel.o := \
    $(wildcard include/config/spl/build.h) \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \

arch/arm/mach-imx/lowlevel.o: $(deps_arch/arm/mach-imx/lowlevel.o)

$(deps_arch/arm/mach-imx/lowlevel.o):
