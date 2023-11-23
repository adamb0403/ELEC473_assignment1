onerror {quit -f}
vlib work
vlog -work work tx_synchroniser.vo
vlog -work work tx_synchroniser.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.tx_synchroniser_vlg_vec_tst
vcd file -direction tx_synchroniser.msim.vcd
vcd add -internal tx_synchroniser_vlg_vec_tst/*
vcd add -internal tx_synchroniser_vlg_vec_tst/i1/*
add wave /*
run -all
