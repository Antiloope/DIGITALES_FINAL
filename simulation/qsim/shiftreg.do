onerror {exit -code 1}
vlib work
vlog -work work shiftreg.vo
<<<<<<< HEAD
vlog -work work AD_SAR.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.AD_SAR_vlg_vec_tst -voptargs="+acc"
vcd file -direction shiftreg.msim.vcd
vcd add -internal AD_SAR_vlg_vec_tst/*
vcd add -internal AD_SAR_vlg_vec_tst/i1/*
=======
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.shiftreg_vlg_vec_tst -voptargs="+acc"
vcd file -direction shiftreg.msim.vcd
vcd add -internal shiftreg_vlg_vec_tst/*
vcd add -internal shiftreg_vlg_vec_tst/i1/*
>>>>>>> 8d436a92879aea4afb293f2f7146206db0661194
run -all
quit -f
