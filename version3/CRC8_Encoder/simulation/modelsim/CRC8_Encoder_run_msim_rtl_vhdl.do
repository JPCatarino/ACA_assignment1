transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/jorpc/projectos/ACA_assignment1/version3/CRC8_Encoder/DFlipFlop.vhd}
vcom -93 -work work {C:/Users/jorpc/projectos/ACA_assignment1/version3/CRC8_Encoder/CRC8_LFSR.vhd}
vcom -93 -work work {C:/Users/jorpc/projectos/ACA_assignment1/version3/CRC8_Encoder/CRC8_Encoder.vhd}

