cmd_arch/arm/dts/fsl-imx8dx-17x17-val.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/fsl-imx8dx-17x17-val.dts; echo '$(pound)include "fsl-imx8dx-17x17-val-u-boot.dtsi"') > arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.pre.tmp; aarch64-linux-gnu-gcc -E -Wp,-MD,arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.dts.tmp arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/fsl-imx8dx-17x17-val.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg -Wno-avoid_unnecessary_addr_size -Wno-alias_paths  -d arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.d.dtc.tmp arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.dts.tmp ; cat arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.d.pre.tmp arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.d.dtc.tmp > arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.d ; sed -i "s:arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.pre.tmp:arch/arm/dts/fsl-imx8dx-17x17-val.dts:" arch/arm/dts/.fsl-imx8dx-17x17-val.dtb.d

source_arch/arm/dts/fsl-imx8dx-17x17-val.dtb := arch/arm/dts/fsl-imx8dx-17x17-val.dts

deps_arch/arm/dts/fsl-imx8dx-17x17-val.dtb := \
  arch/arm/dts/fsl-imx8qxp-17x17-val.dts \
  arch/arm/dts/fsl-imx8qxp-lpddr4-arm2.dts \
  arch/arm/dts/fsl-imx8qxp.dtsi \
  arch/arm/dts/fsl-imx8dxp.dtsi \
  arch/arm/dts/fsl-imx8dx.dtsi \
  arch/arm/dts/include/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/dts/fsl-imx8-ca35.dtsi \
  arch/arm/dts/include/dt-bindings/clock/imx8qxp-clock.h \
  arch/arm/dts/include/dt-bindings/soc/imx_rsrc.h \
  arch/arm/dts/include/dt-bindings/soc/imx8_hsio.h \
  arch/arm/dts/include/dt-bindings/soc/imx8_pd.h \
  arch/arm/dts/include/dt-bindings/input/input.h \
  arch/arm/dts/include/dt-bindings/input/linux-event-codes.h \
  arch/arm/dts/include/dt-bindings/pinctrl/pads-imx8qxp.h \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/include/dt-bindings/thermal/thermal.h \
  arch/arm/dts/fsl-imx8dx-17x17-val-u-boot.dtsi \
  arch/arm/dts/fsl-imx8qxp-17x17-val-u-boot.dtsi \

arch/arm/dts/fsl-imx8dx-17x17-val.dtb: $(deps_arch/arm/dts/fsl-imx8dx-17x17-val.dtb)

$(deps_arch/arm/dts/fsl-imx8dx-17x17-val.dtb):
