onerror {quit -f}
vlib work
vlog -work work design5_fsm.vo
vlog -work work design5_fsm.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.design5_fsm_vlg_vec_tst
vcd file -direction design5_fsm.msim.vcd
vcd add -internal design5_fsm_vlg_vec_tst/*
vcd add -internal design5_fsm_vlg_vec_tst/i1/*
add wave /*
run -all
