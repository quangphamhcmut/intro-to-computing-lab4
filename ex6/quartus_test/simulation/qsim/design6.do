onerror {quit -f}
vlib work
vlog -work work design6.vo
vlog -work work design6.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.design6_vlg_vec_tst
vcd file -direction design6.msim.vcd
vcd add -internal design6_vlg_vec_tst/*
vcd add -internal design6_vlg_vec_tst/i1/*
add wave /*
run -all
