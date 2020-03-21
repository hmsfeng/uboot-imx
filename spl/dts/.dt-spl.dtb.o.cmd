cmd_spl/dts/dt-spl.dtb.o := aarch64-linux-gnu-gcc -Wp,-MD,spl/dts/.dt-spl.dtb.o.d  -nostdinc -isystem /home/vmuser/imx8qxp/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/../lib/gcc/aarch64-linux-gnu/8.3.0/include -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -fno-PIE -g -D__ARM__ -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fno-common -ffixed-x18 -pipe -march=armv8-a -mgeneral-regs-only -D__LINUX_ARM_ARCH__=8   -c -o spl/dts/dt-spl.dtb.o spl/dts/dt-spl.dtb.S

source_spl/dts/dt-spl.dtb.o := spl/dts/dt-spl.dtb.S

deps_spl/dts/dt-spl.dtb.o := \

spl/dts/dt-spl.dtb.o: $(deps_spl/dts/dt-spl.dtb.o)

$(deps_spl/dts/dt-spl.dtb.o):
