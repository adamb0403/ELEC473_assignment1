onerror {quit -f}
vlib work
vlog -work work tx_single_pulser.vo
vlog -work work tx_single_pulser.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.tx_single_pulser_vlg_vec_tst
vcd file -direction tx_single_pulser.msim.vcd
vcd add -internal tx_single_pulser_vlg_vec_tst/*
vcd add -internal tx_single_pulser_vlg_vec_tst/i1/*
add wave /*
run -all
