onerror {exit -code 1}
vlib work
vcom -work work decoder_parallel.vho
vcom -work work teste6VersaoCircuitoM3.vwf.vht
vsim  -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.decoder_parallel_vhd_vec_tst
vcd file -direction decoder_parallel.msim.vcd
vcd add -internal decoder_parallel_vhd_vec_tst/*
vcd add -internal decoder_parallel_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f






