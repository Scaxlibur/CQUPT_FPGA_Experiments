onerror {exit -code 1}
vlib work
vlog -work work fre_div38.vo
vlog -work work Waveform38.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.m100_38_vlg_vec_tst -voptargs="+acc"
vcd file -direction fre_div38.msim.vcd
vcd add -internal m100_38_vlg_vec_tst/*
vcd add -internal m100_38_vlg_vec_tst/i1/*
run -all
quit -f
