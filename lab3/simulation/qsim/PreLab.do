onerror {quit -f}
vlib work
vlog -work work PreLab.vo
vlog -work work PreLab.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ASU_vlg_vec_tst
vcd file -direction PreLab.msim.vcd
vcd add -internal ASU_vlg_vec_tst/*
vcd add -internal ASU_vlg_vec_tst/i1/*
add wave /*
run -all
