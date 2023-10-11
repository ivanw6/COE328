onerror {quit -f}
vlib work
vlog -work work lab1_vhdl1.vo
vlog -work work lab1_vhdl1.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Blockvhdl12_vlg_vec_tst
vcd file -direction lab1_vhdl1.msim.vcd
vcd add -internal Blockvhdl12_vlg_vec_tst/*
vcd add -internal Blockvhdl12_vlg_vec_tst/i1/*
add wave /*
run -all
