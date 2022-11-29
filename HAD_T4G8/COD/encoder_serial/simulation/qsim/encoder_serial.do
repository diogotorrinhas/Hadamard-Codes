onerror {exit -code 1}
vlib work
vcom -work work encoder_serial.vho
vcom -work work teste6.vwf.vht
vsim  -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.encoder_serial_vhd_vec_tst
vcd file -direction encoder_serial.msim.vcd
vcd add -internal encoder_serial_vhd_vec_tst/*
vcd add -internal encoder_serial_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f



