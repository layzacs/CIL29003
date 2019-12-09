onerror {quit -f}
vlib work
vlog -work work contador-inventario-layzacs.vo
vlog -work work contador-inventario-layzacs.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.contador-bin-sin_vlg_vec_tst
vcd file -direction contador-inventario-layzacs.msim.vcd
vcd add -internal contador-bin-sin_vlg_vec_tst/*
vcd add -internal contador-bin-sin_vlg_vec_tst/i1/*
add wave /*
run -all
