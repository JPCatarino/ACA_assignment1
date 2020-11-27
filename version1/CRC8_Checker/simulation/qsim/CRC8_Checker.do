onerror {exit -code 1}
vlib work
vlog -work work CRC8_Checker.vo
vlog -work work CheckerTB.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.CRC8_Checker_vlg_vec_tst -voptargs="+acc"
vcd file -direction CRC8_Checker.msim.vcd
vcd add -internal CRC8_Checker_vlg_vec_tst/*
vcd add -internal CRC8_Checker_vlg_vec_tst/i1/*
run -all
quit -f
