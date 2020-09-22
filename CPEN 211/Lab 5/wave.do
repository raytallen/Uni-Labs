onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /datapath_tb/dut/KEY
add wave -noupdate /datapath_tb/dut/SW
add wave -noupdate /datapath_tb/dut/CLOCK_50
add wave -noupdate /datapath_tb/dut/LEDR
add wave -noupdate /datapath_tb/dut/HEX0
add wave -noupdate /datapath_tb/dut/HEX1
add wave -noupdate /datapath_tb/dut/HEX2
add wave -noupdate /datapath_tb/dut/HEX3
add wave -noupdate /datapath_tb/dut/HEX4
add wave -noupdate /datapath_tb/dut/HEX5
add wave -noupdate /datapath_tb/dut/datapath_in
add wave -noupdate /datapath_tb/dut/datapath_out
add wave -noupdate /datapath_tb/dut/readnum
add wave -noupdate /datapath_tb/dut/writenum
add wave -noupdate /datapath_tb/dut/shift
add wave -noupdate /datapath_tb/dut/ALUop
add wave -noupdate /datapath_tb/dut/write
add wave -noupdate /datapath_tb/dut/vsel
add wave -noupdate /datapath_tb/dut/loada
add wave -noupdate /datapath_tb/dut/loadb
add wave -noupdate /datapath_tb/dut/asel
add wave -noupdate /datapath_tb/dut/bsel
add wave -noupdate /datapath_tb/dut/loadc
add wave -noupdate /datapath_tb/dut/loads
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 190
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {236 ps}
