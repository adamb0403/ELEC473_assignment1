onerror {quit -f}
vlib work
vlog -work work tx_controller.vo
vlog -work work tx_controller.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.tx_controller_vlg_vec_tst
vcd file -direction tx_controller.msim.vcd
vcd add -internal tx_controller_vlg_vec_tst/*
vcd add -internal tx_controller_vlg_vec_tst/i1/*
add wave /*
run -all
