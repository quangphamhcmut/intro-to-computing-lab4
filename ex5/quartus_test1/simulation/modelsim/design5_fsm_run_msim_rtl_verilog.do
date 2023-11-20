transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/python/Documents/projects/lab_4/ex5 {/home/python/Documents/projects/lab_4/ex5/design5_fsm.sv}

