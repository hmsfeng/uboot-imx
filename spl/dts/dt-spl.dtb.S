.section .dtb.init.rodata,"a"
.balign 16
.global __dtb_dt_spl_begin
__dtb_dt_spl_begin:
.incbin "spl/dts/dt-spl.dtb" 
__dtb_dt_spl_end:
.global __dtb_dt_spl_end
.balign 16
