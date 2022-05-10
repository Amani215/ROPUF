transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/asus/Desktop/PUF/inverter_gate.vhd}
vcom -93 -work work {C:/Users/asus/Desktop/PUF/and_gate.vhd}
vcom -93 -work work {C:/Users/asus/Desktop/PUF/multiplexer.vhd}
vcom -93 -work work {C:/Users/asus/Desktop/PUF/counter.vhd}
vcom -93 -work work {C:/Users/asus/Desktop/PUF/comparator.vhd}
vcom -93 -work work {C:/Users/asus/Desktop/PUF/ropuf.vhd}
vcom -93 -work work {C:/Users/asus/Desktop/PUF/delay_line.vhd}
vcom -93 -work work {C:/Users/asus/Desktop/PUF/ring_oscillator.vhd}

